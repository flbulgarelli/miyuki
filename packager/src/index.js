const { app, BrowserWindow } = require('electron');
const { exec } = require('child_process');
const path = require('path');

// Handle creating/removing shortcuts on Windows when installing/uninstalling.
if (require('electron-squirrel-startup')) {
  app.quit();
}

const distName = process.env.DIST_NAME || "pdep";
const command = `docker-compose -f ${process.resourcesPath}/docker/docker-compose.yml -f ${process.resourcesPath}/docker/docker-compose.${distName}.yml up -d`;

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') {
    app.quit();
  }
});

function sendLog(message) {
  mainWindow.webContents.send('log-message', message);
}

app.whenReady().then(() => {
  mainWindow = new BrowserWindow({
    show: false,
    webPreferences: {
      preload: path.join(__dirname, 'preload.js')
    },
  });

  mainWindow.maximize();
  mainWindow.show();
  mainWindow.loadFile(path.join(__dirname, 'loading.html'));

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
})

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