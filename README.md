# MasterROM

A custom firmware for Samsung Galaxy devices with the **Exynos 990** (Galaxy S20 series),
based on One UI 8.5 / Android 16.

> [!IMPORTANT]
> **MasterROM is based on [ArtisanROM](https://github.com/ArtisanROM/ArtisanROM).**
> It is a personal continuation of ArtisanROM by **Android Artisan**, which itself is built on
> [UN1CA](https://github.com/salvogiangri/UN1CA) by **salvogiangri**.
> Almost everything in this repository – the build system, the device bring-up, most patches and
> mods – is the work of the ArtisanROM and UN1CA developers and contributors.
>
> MasterROM is **not meant as a kang** and does not claim their work as its own. The rename only
> makes clear that this is a separate build with its own changes (see below), so that bugs in
> MasterROM are not reported to ArtisanROM. Fixes from ArtisanROM are taken over regularly.
> If you like the ROM, please support the original projects – see [Credits](#credits).

## What MasterROM changes compared to ArtisanROM

- **MasterROM Updater** – a new update app ([MasterROM-Updater](https://github.com/Master37373/MasterROM-Updater)):
  downloads from several mirrors at once, resumes, checks MD5, and installs updates **without root**
- **SD card** – redesigned storage page in the One UI 8.5 glass look, switch between portable and
  internal storage, Secure Folder handling, factory reset with an adopted SD card
- **File-based encryption** fixes for the Exynos 990 (hardware inline encryption, SD card as internal storage)
- ViPER4Android removed

The full list of changes is in [CHANGELOG.md](CHANGELOG.md).

## Supported devices

| Device | Codename |
|---|---|
| Galaxy S20+ | y2s |

Other Exynos 990 devices (S20, S20 Ultra, Note20, Note20 Ultra) are supported by the build system
from ArtisanROM, but MasterROM is only tested on the Galaxy S20+.

## Installation

1. Unlocked bootloader and TWRP
2. Flash the MasterROM ZIP in TWRP (or `adb sideload`)
3. When coming from another ROM: Format Data
4. Later updates come through the MasterROM Updater

## Building

MasterROM is built with the UN1CA build system through GitHub Actions
(`.github/workflows/build.yml`). See the [UN1CA documentation](https://github.com/salvogiangri/UN1CA)
for local builds.

## Credits

MasterROM would not exist without these people and projects:

- **[Android Artisan](https://github.com/Android-Artisan)** – creator of ArtisanROM and ArtisanKRNL,
  the base of MasterROM
- **All [ArtisanROM contributors](https://github.com/ArtisanROM/ArtisanROM/graphs/contributors)**
  and everyone listed in [MAINTAINERS](MAINTAINERS)
- **[salvogiangri](https://github.com/salvogiangri)** and all
  [UN1CA contributors](https://github.com/salvogiangri/UN1CA/graphs/contributors) – the build system
  and the foundation of ArtisanROM
- **[TeamWin](https://twrp.me)** for TWRP, the **KernelSU-Next** developers
- **Samsung** for One UI and the kernel sources, and the **AOSP** project
- Everyone who tests and reports bugs

The history of ArtisanROM is kept in the [ArtisanROM archive](https://github.com/ArtisanROM-archive).

## License

MasterROM keeps the license of ArtisanROM and UN1CA, see [LICENSE](LICENSE).
