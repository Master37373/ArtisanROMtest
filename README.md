<p align="center">
  <a href="https://github.com/Master37373/MasterROM/blob/sixteen-qpr2/LICENSE"><img loading="lazy" src="https://img.shields.io/github/license/Master37373/MasterROM?style=for-the-badge&logo=github"/></a>
  <a href="https://github.com/Master37373/MasterROM/commits/sixteen-qpr2"><img loading="lazy" src="https://img.shields.io/github/last-commit/Master37373/MasterROM/sixteen-qpr2?style=for-the-badge"/></a>
</p>
<p align="center">MasterROM <i>Opus</i> is a custom firmware for the Samsung Galaxy S20+ (Exynos 990), based on ArtisanROM.</p>

<p align="center">
  <a href="https://github.com/Master37373/MasterROM/issues">🚀 Issues</a>
  •
  <a href="https://github.com/Master37373/MasterROM/blob/sixteen-qpr2/CHANGELOG.md">📝 Changelog</a>
  •
  <a href="https://github.com/Master37373/MasterROM-Updater">📲 Updater</a>
  •
  <a href="https://github.com/ArtisanROM/ArtisanROM">🎨 ArtisanROM (original)</a>
</p>

> [!IMPORTANT]
> **MasterROM is based on [ArtisanROM](https://github.com/ArtisanROM/ArtisanROM) by [Android Artisan](https://github.com/Android-Artisan)**,
> which itself is built on [UN1CA](https://github.com/salvogiangri/UN1CA) by [salvogiangri](https://github.com/salvogiangri).
> Almost everything in this repository – the build system, the device bring-up, the kernel, most patches,
> mods and features – is the work of the ArtisanROM and UN1CA developers and contributors listed below.
>
> MasterROM is **not meant as a kang** and does not claim their work as its own. The new name only makes
> clear that this is a separate build with its own changes, so that bugs in MasterROM are **not** reported
> to ArtisanROM. Fixes from ArtisanROM are taken over regularly.
> If you like the ROM, please support the original projects.

# What is MasterROM Opus?
MasterROM Opus is a personal continuation of ArtisanROM Aether for the Galaxy S20+.

Like ArtisanROM, it's based on the latest iteration of Samsung's One UI and includes additional features and tweaks
for the best possible experience out of the box. It uses the UN1CA build system, which automatically downloads and
extracts the firmware, applies the required patches and generates a flashable zip for the target device.

## What MasterROM changes compared to ArtisanROM
- **MasterROM Updater** – a new OTA app ([MasterROM-Updater](https://github.com/Master37373/MasterROM-Updater)):
  downloads from several mirrors at once, resumes, checks MD5, shows the changelog, checks in the background
  and installs updates **without root**
- **SD card** – redesigned storage page in the One UI 8.5 glass look, switching between portable and internal storage,
  Secure Folder handling, factory reset with an adopted SD card
- **File-based encryption** fixes for the Exynos 990 (hardware inline encryption, SD card as internal storage)
- ViPER4Android removed

The full list is in [CHANGELOG.md](CHANGELOG.md).

# Features
Everything below comes from ArtisanROM and UN1CA.

### Core features:
- Based on the latest stable Galaxy S24+ firmware
- EROFS powered
- Galaxy S26 wallpapers/sounds included
- Galaxy AI support
  - Audio eraser
  - Browsing assist
  - Call assist
  - Drawing assist
  - Interpreter
  - Note assist
  - Now brief
  - Photo assist
  - Semantic search
  - Transcript assist
  - Writing assist
- High end animations
- Native/live blur support
- AOD clock transition support
- Adaptive color tone support
- Adaptive refresh rate support (HFR WIP)
- Extra brightness support
- Picture remaster support
- Object, shadow and reflection eraser support
- Image clipper support
- Multi user support
- Samsung DeX support*
- Camera privacy toggle support
- Debloated from useless system services/additional apps
- Dual Messenger available for all apps
- Custom FlipFont fonts support
- Outdoor mode support
- Auto PIN confirm with 4 digits
- [BluetoothLibraryPatcher](https://github.com/3arthur6/BluetoothLibraryPatcher) integrated
- [KnoxPatch](https://github.com/salvogiangri/KnoxPatch) integrated
- Extra CSC features enabled (Call recording, Hiya, Network speed in status bar, AltZLife)

\* DeX via HDMI not available for devices without USB-C DP support

### From ArtisanROM:
- Integrated OTA updates (now the MasterROM Updater)
- Completely upstreamed kernel (ArtisanKRNL)

### From UN1CA:
- Native/live blur toggle
- One UI Home animations option
- Vulkan renderer toggle
- Key attestation spoof ([TrickyStore](https://github.com/5ec1cff/TrickyStore)) options*
- Play Integrity Fix integrated
- Ability to hide installed apps ([Hide My Applist](https://github.com/Dr-TSNG/Hide-My-Applist))
- Ability to hide developer options
- Allow app downgrade toggle
- Allow installing apps with old targetSdk toggle
- Allow secure screenshot toggle
- Screenshot/screen recording detection toggle
- Games FPS unlock toggle

\* Requires a valid keybox

# Supported devices
| Device | Codename |
|---|---|
| Galaxy S20+ | y2s |

MasterROM is only built and tested for the Galaxy S20+. The other Exynos 990 devices are supported by
[ArtisanROM](https://github.com/ArtisanROM/ArtisanROM).

# Installation
1. Unlocked bootloader and TWRP
2. Flash the MasterROM zip in TWRP (or `adb sideload`)
3. When coming from another ROM: Format Data
4. Later updates come through the MasterROM Updater

# Building
MasterROM is built with the UN1CA build system through GitHub Actions (`.github/workflows/build.yml`).
See the [UN1CA documentation](https://github.com/salvogiangri/UN1CA) for local builds.

# Licensing
This project keeps the license of ArtisanROM and UN1CA: the [GNU General Public License v3.0](LICENSE).
External dependencies might be distributed under a different license, such as:
- [android-tools](https://github.com/nmeum/android-tools), licensed under the [Apache License 2.0](https://github.com/nmeum/android-tools/blob/master/LICENSE)
- [apktool](https://github.com/iBotPeaches/Apktool), licensed under the [Apache License 2.0](https://github.com/iBotPeaches/Apktool/blob/master/LICENSE.md)
- [erofs-utils](https://github.com/sekaiacg/erofs-utils/), dual license ([GPL-2.0](https://github.com/sekaiacg/erofs-utils/blob/dev/LICENSES/GPL-2.0), [Apache-2.0](https://github.com/sekaiacg/erofs-utils/blob/dev/LICENSES/Apache-2.0))
- [img2sdat](https://github.com/xpirt/img2sdat), licensed under the [MIT License](https://github.com/xpirt/img2sdat/blob/master/LICENSE)
- [platform_build](https://android.googlesource.com/platform/build/) (ext4_utils, f2fs_utils, signapk), licensed under the [Apache License 2.0](https://source.android.com/docs/setup/about/licenses)

# Disclaimer

```cpp
#include <std_disclaimer.h>

/*
* Your warranty is now void.
*
* I am not responsible for bricked devices, dead SD cards,
* thermonuclear war, or you getting fired because the alarm app failed. Please
* do some research if you have any concerns about doing this to your device
* YOU are choosing to make these modifications, and if
* you point the finger at me for messing up your device, I will laugh at you.
*
* I am also not responsible for you getting in trouble for using any of the
* features in this ROM, including but not limited to Call Recording, secure
* flag removal etc.
*/
```

# Contributors
MasterROM is built on the work of everyone who contributed to ArtisanROM and UN1CA:

**ArtisanROM**

<a href="https://github.com/ArtisanROM/ArtisanROM/graphs/contributors"><img loading="lazy" src="https://contrib.rocks/image?repo=ArtisanROM/ArtisanROM"/></a>

**UN1CA**

<a href="https://github.com/salvogiangri/UN1CA/graphs/contributors"><img loading="lazy" src="https://contrib.rocks/image?repo=salvogiangri/UN1CA"/></a>

# Credits
- **[Android Artisan](https://github.com/Android-Artisan)** for creating ArtisanROM and ArtisanKRNL, the base of MasterROM

## Original ArtisanROM credits:
- **[salvogiangri](https://github.com/salvogiangri)** for the UN1CA build system, OneUI patches, and general help and support while developing.
- **[ExtremeXT](https://github.com/ExtremeXT)** for helping fix bugs and giving support.
- **[GhasemzadehFard-Dev](https://github.com/GhasemzadehFard-Dev)** for helping fix many bugs.
- **[Mesazane](https://github.com/Mesazane)** for testing and helping with the updater's design, and for updating and fixing KernelSU-Next on the kernels.
- **[ricci205GTI](https://github.com/ricci205GTI)** for fixing motion photo and help with the x1s.
- **[immohammeeed](https://github.com/immohammeeed)** for creating the website for ArtisanROM.
- **[3q5i](https://github.com/3q5i)** for support and ideas for the ROM.
- **[irvinhaha](https://github.com/irvinhaha)** for designing many banners and logos.
- **[CiprianDinca](https://github.com/CiprianDinca9)** for custom ExtremeROM ringtones.
- **[Dupazlasu/Milxnaq](https://github.com/milxnaq)** for fixing bluetooth on the S10x and much more.
- Everyone else who helped ArtisanROM along the way.

## Original UN1CA credits:
A special thanks goes to the following for their invaluable contributions in no particular order:
- **[ShaDisNX255](https://github.com/ShaDisNX255)** for his help, time and for his [NcX ROM](https://github.com/ShaDisNX255/NcX_Stock) which inspired this project
- **[DavidArsene](https://github.com/DavidArsene)** for his help and time
- **[paulowesll](https://github.com/paulowesll)** for his help and support
- **[Simon1511](https://github.com/Simon1511)** for his support and some of the device-specific patches
- **[ananjaser1211](https://github.com/ananjaser1211)** for troubleshooting and his time
- **[Fede2782](https://github.com/Fede2782)** for his contributions and help with Exynos/MTK support
- **[iDrinkCoffee](https://github.com/iDrinkCoffee-TG)** and **[RisenID](https://github.com/RisenID)** for their support
- **[LineageOS Team](https://www.lineageos.org/)** for their original [OTA updater implementation](https://github.com/LineageOS/android_packages_apps_Updater)
- *All the UN1CA project forks, contributors, testers and users ❤️*

## Also thanks to:
- **[TeamWin](https://twrp.me)** for TWRP and the **KernelSU-Next** developers
- **Samsung** for One UI and the kernel sources, and the **AOSP** project
- Everyone who tests MasterROM and reports bugs

# ArtisanROM Archive
- [ArtisanROM Archive Org](https://github.com/ArtisanROM-archive)
- [Old Sixteen branch](https://github.com/ArtisanROM-archive/ArtisanROM_old)
