import { app, ipcMain } from "electron";
import { saveLicenseAcceptance } from "./license";
import { startMiyuki } from "./main";

ipcMain.on('license-response', (_, accepted: boolean) => {
  if (accepted) {
    saveLicenseAcceptance();
    startMiyuki();
  } else {
    app.quit();
  }
});