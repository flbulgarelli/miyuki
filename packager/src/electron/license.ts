import { BrowserWindow, app } from "electron";
import { writeFileSync, existsSync } from 'fs';
import { join } from 'path';

const userDataPath = app.getPath('userData');
const licensePath = join(userDataPath, 'license-accepted');

export const hasAcceptedLicense = (): boolean => existsSync(licensePath);

export const saveLicenseAcceptance = (): void => {
    writeFileSync(licensePath, 'accepted');
}

export const showLicenseWindow = (mainWindow: BrowserWindow): void => {
    mainWindow.loadFile(join(__dirname, 'license/license.html'));
}