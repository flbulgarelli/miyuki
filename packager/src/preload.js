const { contextBridge, ipcRenderer } = require('electron');

contextBridge.exposeInMainWorld("electron", {
    onLogMessage: (callback) => ipcRenderer.on("log-message", (_event, message) => callback(message)),
});