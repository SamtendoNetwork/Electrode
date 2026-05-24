# Electrode - Aroma patches for Samtendo

[![Samtendo Network logo](https://cdn.samtendo.net/images/NewSamtendoBanner.png)](https://samtendo.net)

Electrode is an Aroma/WUPS plugin that patches various Nintendo Network URLs on a Wii U to use Samtendo Network instead. It also (for the time being) bypasses SSL verification in most cases. It redirects Nintendo Network in:

- IOSU-side connections (Friends, SpotPass, accounts etc.)
- Account Settings
- NNCS
- Nintendo eShop
- Miiverse (in-game)
- Miiverse applet

Please be aware that Electrode is a fork of Inkay. While that is true, we have repurposed the code to work with Samtendo Network instead of Pretendo. When compiling or running commands related to any Dockerfiles or Makefiles, please ensure you use the original commands with the `inkay` name.

Electrode also includes game-specific patches to add extra features:
- Modpack-specific matchmaking for global, regional rooms (by simulating extra DLC) - **Mario Kart 8**
- P2P port override for better connection stability (if you port forward) - **Minecraft: Wii U Edition**, **Mario Kart 8**, **Splatoon**

## Requirements
Electrode is only supported on the release version of Aroma configured for autoboot/coldboot. Other configurations (specifically lacking coldboot) may cause issues with SpotPass.

## Safety
Electrode's patches are all temporary, and only applied in-memory without modifying your console. The SSL patch, while also temporary, could reduce the overall security of your console while active - this is because it no longer checks if a server is verified. However, this does not apply to the Internet Browser, where SSL still works as expected.

## Compiling - Docker
Electrode's dependencies and build tooling can be handled as a container, which is recommended for WUPS plugins. Using `docker` or `podman`:
```shell
# On Windows (make sure to use CMD):
docker build -t inkay .
docker run --rm -v %cd%:/app inkay make
# On Linux:
docker build -t inkay .
docker run --rm -v $(pwd):/app inkay make
# you can replace "make" with other commands - e.g. make clean
# on Windows, replace "$(pwd)" with "%cd%"
```
If using `podman` on SELinux systems (like Fedora Linux), you might need to use `$(pwd):/app:Z` instead of `$(pwd):/app`.

## Compiling - System
Electrode has the following dependencies aside from devkitPPC and wut:
- [WiiUPluginSystem](https://github.com/wiiu-env/WiiUPluginSystem)
- [WiiUModuleSystem](https://github.com/wiiu-env/WiiUModuleSystem)
- [libmocha](https://github.com/wiiu-env/libmocha)
- [libkernel](https://github.com/wiiu-env/libkernel/)
- [libnotifications](https://github.com/wiiu-env/libnotifications/)
- [libfunctionpatcher](https://github.com/wiiu-env/libfunctionpatcher)

Each of these should be `make install`-able. After that, you can compile Electrode with `make`.

## TODO
See [Issues](https://github.com/SamtendoNetwork/Electrode/issues).
