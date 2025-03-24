const { app, BrowserWindow } = require('electron');
const { exec } = require('child_process');
const path = require('node:path');

// Handle creating/removing shortcuts on Windows when installing/uninstalling.
if (require('electron-squirrel-startup')) {
  app.quit();
}

const command = `docker-compose -f ${process.resourcesPath}/docker/docker-compose.yml -f ${process.resourcesPath}/docker/docker-compose.pdep.yml up -d`;

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') {
    app.quit();
  }
});

app.whenReady().then(() => {
  mainWindow = new BrowserWindow({
    width: 800,
    height: 600,
    webPreferences: {
      nodeIntegration: true, 
    },
  });

  exec(command, (error, stdout, stderr) => {
    if (error) {
      console.error(`Error al ejecutar Docker Compose: ${error.message}`);
      return;
    }
    if (stderr) {
      console.error(`Error en la salida: ${stderr}`);
      return;
    }
    console.log(`Salida de Docker Compose: ${stdout}`);
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
          .catch(() => console.log("Esperando a que el servidor esté disponible..."));
  }, 3000);
}