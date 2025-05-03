const { app, Menu, BrowserWindow, ipcMain, shell} = require('electron');
const { exec } = require('child_process');
const menuTemplate = require('./menu');
const { hasAcceptedLicense, saveLicenseAcceptance, showLicenseWindow } = require('./license');
const path = require('path');

// Handle creating/removing shortcuts on Windows when installing/uninstalling.
if (require('electron-squirrel-startup')) {
  app.quit();
}

const miyukiDist = process.env.MIYUKI_DIST || "pdep";
const command = `docker compose -f ${process.resourcesPath}/docker/docker-compose.yml -f ${process.resourcesPath}/docker/docker-compose.${miyukiDist}.yml up -d`;

let mainWindow;

app.whenReady().then(() => {
  mainWindow = new BrowserWindow({
    show: false,
    webPreferences: {
      nodeIntegration: true,
      contextIsolation: false,
      preload: path.join(__dirname, 'preload.js')
    },
  });

  const menu = Menu.buildFromTemplate(menuTemplate);
  Menu.setApplicationMenu(menu);
  mainWindow.maximize();
  mainWindow.show();

  if (hasAcceptedLicense()) {
    startMiyuki();
  } else {
    showLicenseWindow(mainWindow);
  }
});

ipcMain.on('license-response', (event, accepted) => {
  if (accepted) {
    saveLicenseAcceptance();
    startMiyuki();
  } else {
    app.quit();
  }
});

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') {
    app.quit();
  }
});

function startMiyuki() {
  mainWindow.loadFile(path.join(__dirname, 'loading/loading.html'));

  mainWindow.webContents.setWindowOpenHandler((details) => {
    shell.openExternal(details.url);
    return { action: "deny" };
  })

  exec(command, (error, stdout, stderr) => {
    if (error) {
      sendLog(`Error on Docker Compose execution: ${error.message}`);
      return;
    }
    if (stderr) {
      sendLog(`Error on output: ${stderr}`);
      return;
    }
    sendLog(`Docker Compose output: ${stdout}`);
  });

  waitForServer("http://localhost:3000", () => {
    mainWindow.loadURL("http://localhost:3000");
  });
}

function sendLog(message) {
  mainWindow.webContents.send('log-message', message);
}

function waitForServer(url, callback) {
  const interval = setInterval(() => {
    fetch(url)
      .then(response => {
        if (response.ok) {
          clearInterval(interval);
          callback();
        }
      })
      .catch(() => sendLog("Waiting for server to be available..."));
  }, 3000);
}