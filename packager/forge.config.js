const path = require('path');

module.exports = {
  packagerConfig: {
    asar: false,
    extraResource: ['docker/'],
    executableName: "Miyuki",
    icon: path.resolve(__dirname, 'src/icons/favicon')
  },
  rebuildConfig: {},
  makers: [
    {
      name: '@electron-forge/maker-squirrel',
      config: {
        iconUrl: 'file://' + path.resolve(__dirname, 'src/icons/favicon.ico'),
        setupIcon: path.resolve(__dirname, 'src/icons/favicon.ico'),
        setupExe: 'MiyukiInstaller.exe',
      },
    },
    {
      name: '@electron-forge/maker-deb',
      config: {
        icon: path.resolve(__dirname, 'src/icons/favicon.png')
      },
    },
    {
      name: '@electron-forge/maker-dmg',
      config: {
        background: './assets/dmg-background.png',
        format: 'ULFO'
      }
    }
  ],
};
