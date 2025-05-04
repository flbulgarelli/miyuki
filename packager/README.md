# Tuki

## Packaging
* Make sure you are using the correct node version running `nvm use`
* Run `npm install`
* Run `MIYUKI_DIST=<dist> npm run build`, using the name of the distribution you want to pack. 
* You can find the installers on the `out` folder.

## Releasing 

To release a new version of a distribution, create a new tag with the format `<dist>/v<version>`. For example, for the distribution `pdep` and version `1.1.0`, the tag name would be `pdep/v1.1.0`.
This will automatically pack for both windows and linux, and you will find the installers on the [Releases](https://github.com/flbulgarelli/miyuki/releases) page.