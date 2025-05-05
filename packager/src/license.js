const { app } = require('electron');
const fs = require('fs');
const path = require('path');

const userDataPath = app.getPath('userData');
const licensePath = path.join(userDataPath, 'license-accepted');

function hasAcceptedLicense() {
    return fs.existsSync(licensePath);
}

function saveLicenseAcceptance() {
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