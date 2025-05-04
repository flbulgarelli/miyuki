import { app, BrowserWindow } from "electron";
import { join } from "path";

export const sendLog = (message: string, mainWindow: BrowserWindow): void => {
    mainWindow.webContents.send('log-message', message);
}

export const mainURL = () => app.isPackaged ? `file://${join(__dirname, "../dist/index.html")}` : "http://localhost:5173/"

export const waitForServer = (url: string, mainWindow: BrowserWindow, callback: () => void): void => {
    const interval = setInterval(() => {
        fetch(url)
            .then(response => {
                if (response.ok) {
                    clearInterval(interval);
                    callback();
                }
            })
            .catch(() => sendLog("Waiting for server to be available...", mainWindow));
    }, 3000);
}
