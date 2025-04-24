const { app } = require('electron');
const fs = require('fs');
const path = require('path');

function hasAcceptedLicense() {
    const userDataPath = app.getPath('userData');
    const licensePath = path.join(userDataPath, 'license-accepted');
    return fs.existsSync(licensePath);
}

function saveLicenseAcceptance() {
    const userDataPath = app.getPath('userData');
    const licensePath = path.join(userDataPath, 'license-accepted');
    fs.writeFileSync(licensePath, 'accepted');
}

function showLicenseWindow(mainWindow) {
    mainWindow.loadFile(path.join(__dirname, 'license/license.html'));
}

module.exports = {
    hasAcceptedLicense,
    saveLicenseAcceptance,
    showLicenseWindow
};