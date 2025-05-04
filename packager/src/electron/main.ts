import { app, BrowserWindow, Menu, shell } from "electron";
import { join } from "path";
import "./api";
import { exec } from "child_process";
import { menuTemplate } from "./menu";
import { hasAcceptedLicense, showLicenseWindow } from "./license";
import { mainURL, sendLog, waitForServer } from "./utils";

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

  if (hasAcceptedLicense()) {
    startMiyuki();
  } else {
    showLicenseWindow(mainWindow);
  }
});

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') {
    app.quit();
  }
});

export const startMiyuki = (): void => {
  mainWindow.loadURL(`${mainURL()}#/loading`)

  mainWindow.webContents.setWindowOpenHandler((details) => {
    shell.openExternal(details.url);
    return { action: "deny" };
  })

  exec(command, (error, stdout, stderr) => {
    if (error) {
      sendLog(`Error on Docker Compose execution: ${error.message}`, mainWindow);
      return;
    }
    if (stderr) {
      sendLog(`Error on output: ${stderr}`, mainWindow);
      return;
    }
    sendLog(`Docker Compose output: ${stdout}`, mainWindow);
  });

  waitForServer("http://localhost:3000", mainWindow, () => {
    mainWindow.loadURL("http://localhost:3000");
  });
}


