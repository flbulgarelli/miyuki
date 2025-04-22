const { app, Menu, BrowserWindow } = require('electron');
const { spawn } = require('child_process');
const menuTemplate = require('./menu');
const path = require('path');

// Handle creating/removing shortcuts on Windows when installing/uninstalling.
if (require('electron-squirrel-startup')) {
  app.quit();
}

const miyukiDist = process.env.MIYUKI_DIST || "pdep";

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

  const menu = Menu.buildFromTemplate(menuTemplate);
  Menu.setApplicationMenu(menu);
  mainWindow.maximize();
  mainWindow.show();
  mainWindow.loadFile(path.join(__dirname, 'loading.html'));

  const dockerProcess = spawn("docker", [
    'compose',
    '-f', path.join(process.resourcesPath, 'docker', 'docker-compose.yml'),
    '-f', path.join(process.resourcesPath, 'docker', `docker-compose.${miyukiDist}.yml`),
    'up',
    '-d'
  ])

  // Por algun motivo docker usa el stderr unicamente (?
  dockerProcess.stdout.on('data', (data) => {
    sendLog(`[INFO] ${data.toString()}`);
  });

  dockerProcess.stderr.on('data', (data) => {
    sendLog(`[INFO] ${data.toString()}`)
  });

  dockerProcess.on('error', (error) => {
    sendLog(`[ERROR]: Error iniciando el subproceso: ${error.message}`);
  });

  dockerProcess.on('close', (code) => {
    if (code === 0) {
      sendLog(`[SUCCESS]: Containers iniciados correctamente.`);
      waitForServer("http://localhost:3000", () => {
        mainWindow.loadURL("http://localhost:3000");
      });
    } else {
      sendLog(`[CRITIC]: Código de error: ${code}.`);
    }
  });

});

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