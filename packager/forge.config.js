module.exports = {
  packagerConfig: {
    asar: false,
    extraResource: ['docker/'],
    executableName: "Miyuki"
  },
  rebuildConfig: {},
  makers: [
    {
      name: '@electron-forge/maker-squirrel',
      config: {},
    },
    {
      name: '@electron-forge/maker-deb',
      config: {},
    },
  ],
};
