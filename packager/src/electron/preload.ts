import { contextBridge, ipcRenderer, IpcRendererEvent } from "electron";

export const electron = {
    onLogMessage: (callback: (message: string) => void) => {
        ipcRenderer.on('log-message', (_event: IpcRendererEvent, message: string) => {
            callback(message);
        });
    },
}

contextBridge.exposeInMainWorld('electron', electron);

