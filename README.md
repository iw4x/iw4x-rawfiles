![license](https://img.shields.io/github/license/iw4x/iw4x-rawfiles.svg)
![forks](https://img.shields.io/github/forks/iw4x/iw4x-rawfiles.svg)
![stars](https://img.shields.io/github/stars/iw4x/iw4x-rawfiles.svg)
![issues](https://img.shields.io/github/issues/iw4x/iw4x-rawfiles.svg)

# IW4x: Rawfiles

These are the rawfiles that are required (next to iw4x.dll) to launch and play IW4x.

.iwd Files (iw4x_00, iw4x_01, ...) are uncompressed in this repo and need to be compressed before they can be used by IW4x, simply create a .zip archive of the contents of the iw4x_00 and iw4x_.. folders and change the file extension to .iwd.

# Building

Almost all the **fastfiles** in this repo are already compiled and available for use by IW4x. Likewise, as stated above, the **IWDs** can be built using the provided build scripts found under the `scripts` folder. However, some fastfiles are easy to reproduce, and to simplify development, the language fastfiles are built using [OAT](https://github.com/Laupetin/OpenAssetTools). The repository already has these files set up in the correct folders so that OAT can read them and generate the language fastfiles. See [ci.yml](.github/workflows/ci.yml) for more information.
