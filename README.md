# Nova
Nova is a CLI for controlling Govee light strips. Inspired by Bandev's [Lux](https://github.com/BanDev/Lux).
Made with Nim.

Not affiliated with Govee.

## Contents
(Tip: Click on the 3 lines on the file header to access the automatically generated table of contents.)
- [Supported Devices](#supported-devices)
- [Notes](#important-notes)
- [Installation](#installation)
- [How To Get Govee API Key](#how-to-get-govee-api-key)
- [Deletion](#deletion)
- [Documentation](#documentation)
- [Build From Source](#build-from-source)

## Supported Devices
Not all Govee devices are supported by Nova. The devices supported by Nova are:

H6160, H6163, H6104, H6109, H6110, H6117, H6159, H7022, H6086,
H6089, H6182, H6085, H7014, H5081, H6188, H6135, H6137, H6141,
H6142, H6195, H7005, H6083, H6002, H6003, H6148, H6052, H6143,
H6144, H6050, H6199, H6054, H5001, H6154, H6072, H6121, H611A,
H5080, H6062, H614C, H615A, H615B, H7020, H7021, H614D, H611Z,
H611B, H611C, H615C, H615D, H7006, H7007, H7008, H7012, H7013,
H7050, H6051, H6056, H6061, H6058, H6073, H6076, H619A, H619C,
H618A, H618C, H6008, H6071, H6075, H614A, H614B, H614E, H618E,
H619E, H605B, H6087, H6172, H619B, H619D, H619Z, H61A0, H7060,
H610A, H6059, H7028, H6198, H6049, H7031, H7032, H61A1, H61A2,
H61B2, H7061, H6067, H6066, H6009, H7041, H7042, H604A, H6173,
H615E, H604B, H6091, H7051, H7062, H618F, H605D, H6046, H601A,
H61A3, H610B, H6047, H7065, H61E1, H6057, H604C, H6065, H605C,
H705A, H705B, H7055, H61A5, H6078, H604D, H6168, H6601, H70B1,
H61A8, H7121, H7122, H7123, H7120, H7141, H7142, H7130, H7131, 
H7132, H7150, H7160, H7101, H7111

Only Wi-Fi devices are supported.

## Important Notes
**Positional arguments are not supported.** For example: `nova color 0 "aliceblue"` will not work and throw an error. You will have to explicitly declare every argument you pass into the command. For example: `nova color -d 0 -c "aliceblue"`. Also, see [`setup`](DOCS.md#setup).

In addition, please refrain from calling commands too quickly or freqently.

## Installation
You can just download the installer from the [most recent version](https://github.com/nonimportant/nova/releases/latest), or from `winget` by running:
```winget install Jasmine.Nova```.

However you can also install like so:

1. Download your OS's execuable from the [most recent version](https://github.com/nonimportant/nova/releases/latest) (If your browser or antivirus raises a warning, ignore it and let it bypass. If you don't, there might be problems with step 4 and 5).
2. Create a directory in your root or home directory, then move the file into that directory (the location doesn't actually matter just don't leave it in the Downloads folder. I suggest this directory only have the file in it and nothing else because of the next step).
3. Add the directory to your `Path` environment variable, or else you'll have to go to and find the directory and open a terminal in that directory just to use Nova.
4. Run `nova setup` in your terminal/shell, and you're good to go (see [`setup`](https://github.com/nonimportant/nova/blob/main/README.md#setup)'s docs if there are any problems).

## How to get Govee API key
1. Open the Govee Home mobile app.
2. Go to the "My Profile" tab, go to settings (the gear in the top right), press "Apply for API key"
3. Fill out your name and your reason (for the reason you can just write "I would like to control my LEDs with a CLI" and it should be fine) and submit.

You should recive an email with your API key soo

## Deletion
1. Delete Nova from whatever directory you put it in (or delete the directory itself).

Or, if you installed with the Windows installer, open Settings, go to Apps, then search for "Nova." When you see Nova, click the three dots and hit "Uninstall."

## Documentation
See [DOCS.md](DOCS.md)

## Build from source
### Reqirements
- [Nim](https://nim-lang.org) >= 1.6.8
- Mingw installed from [MSYS2](https://www.msys2.org) MSYS (only needed if you want to build windows installer)
- [Inno Setup](https://jrsoftware.org/isdl.php#stable) (again, only needed for windows installer)

### Build
In order to build, cd into the base directory and run:

```shell
nimble install tinydialogs cligen puppy
nim c src/nova.nim

iscc installer/installer.iss # skip if you dont want to build installer
```

The compilied binaries will be avalible in the `bin/` directory.

###### Made with ❤️ with Nim
