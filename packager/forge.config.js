module.exports = {
  packagerConfig: {
    asar: false,
    extraResource: ['docker/'],
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
