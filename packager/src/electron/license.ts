import { BrowserWindow, app } from "electron";
import { writeFileSync, existsSync } from 'fs';
import { join } from 'path';
import { mainURL } from "./main";

const userDataPath = app.getPath('userData');
const licensePath = join(userDataPath, 'license-accepted');

export const hasAcceptedLicense = (): boolean => existsSync(licensePath);

export const saveLicenseAcceptance = (): void => {
    writeFileSync(licensePath, 'accepted');
}

export const showLicenseWindow = (mainWindow: BrowserWindow): void => {
    mainWindow.loadURL(`${mainURL()}#/principles-and-license`)
}