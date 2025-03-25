const { app, BrowserWindow } = require('electron');
const { exec } = require('child_process');
const dotenv = require('dotenv');

// Handle creating/removing shortcuts on Windows when installing/uninstalling.
if (require('electron-squirrel-startup')) {
  app.quit();
}

dotenv.config();

const distName = process.env.DIST_NAME || "pdep";
const command = `docker-compose -f ${process.resourcesPath}/docker/docker-compose.yml -f ${process.resourcesPath}/docker/docker-compose.${distName}.yml up -d`;

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
      console.error(`Error on Docker Compose execution: ${error.message}`);
      return;
    }
    if (stderr) {
      console.error(`Error on output: ${stderr}`);
      return;
    }
    console.log(`Docker Compose output: ${stdout}`);
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
          .catch(() => console.log("Waiting for server to be available..."));
  }, 3000);
}