import { app, BrowserWindow, ipcMain, Menu, shell } from "electron";
import { join } from "path";
import "./api";
import { exec } from "child_process";
import { menuTemplate } from "./menu";
import { hasAcceptedLicense, showLicenseWindow } from "./license";

const miyukiDist = process.env.MIYUKI_DIST || "pdep";
const command = `docker compose -f ${process.resourcesPath}/docker/docker-compose.yml -f ${process.resourcesPath}/docker/docker-compose.${miyukiDist}.yml up -d`;

let mainWindow: BrowserWindow;

app.whenReady().then(() => {
  mainWindow = new BrowserWindow({
    show: false,
    webPreferences: {
      nodeIntegration: true,
      contextIsolation: false,
      preload: join(__dirname, 'preload.js')
    },
  });

  const menu = Menu.buildFromTemplate(menuTemplate);
  Menu.setApplicationMenu(menu);
  mainWindow.maximize();
  mainWindow.show();

  startMiyuki();

/*   if (hasAcceptedLicense()) {
    startMiyuki();
  } else {
    showLicenseWindow(mainWindow);
  } */
});

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') {
    app.quit();
  }
});

export const startMiyuki = (): void => {
 // mainWindow.loadFile(join(__dirname, 'loading/loading.html'));

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

const sendLog = (message: string): void => {
  mainWindow.webContents.send('log-message', message);
}

const waitForServer = (url: string, callback: () => void): void => {
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