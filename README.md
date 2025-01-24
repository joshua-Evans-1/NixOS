# Nix-OS Configuration

## Introduction

#### What is nix
Nix is a linux based operating system, package manager, programming language, etc... that 
allows the user to declaratively control and contain system evironments. the declaritve 
nature of nix os allows for user to create easily reproducable systems and with 
reproducability comes scalablity and version control.

#### Why am I using Nix
- reproducability 
    when using other linux distrobutions ive found that sometimes packages or systems 
    seem to break and then i end up reinstalling the os only to spend hours reinstalling
    and reconfiguring everything the specific way i like it with nix everthing is installed
    and configured through files.

- version control
    with nix if i mess something up with my system instead of having to try to fix it by
    uninstalling/deleting packages or reinstalling i can just rollback my system to the last
    build that i made.

- environmental isolation
    with nix I can deploy a contained environment with all of the dependencies and
    environmental variables i need for that environment without permanantly bloating 
    my system which for developers who work with a wide range of tools can be useful.


nix is unconventional, theres truely nothing else like it out there as someone who enjoys 
learning and tinkering with things its become a developer playground. i do not necessarily 
recomend anyone who doesnt already use nix to use it, for the same reasons its good it also
has a steep learning curve and if your not willing to learn it, it can become a nightmare.

## Configuration

### Structure
```
dotfiles
├── flake.nix
├── nixmodules
│   ├── default.nix
│   ├── system
│   │   ├── bottom
│   │   │   └── default.nix
│   │   ├── default.nix
│   │   ├── firefox
│   │   │   └── default.nix
│   │   ├── git
│   │   │   └── default.nix
│   │   ├── home-manager
│   │   │   └── default.nix
│   │   ├── kitty
│   │   │   ├── default.nix
│   │   │   └── kitty.conf
│   │   ├── neofetch
│   │   │   ├── config.conf
│   │   │   └── default.nix
│   │   ├── neovim
│   │   │   └── default.nix
│   │   ├── nnn
│   │   │   └── default.nix
│   │   ├── pulse
│   │   │   └── default.nix
│   │   ├── pywal
│   │   │   └── default.nix
│   │   ├── tmux
│   │   │   ├── default.nix
│   │   │   └── tmux.conf
│   │   ├── tuigreet
│   │   │   └── default.nix
│   │   └── zip
│   │       └── default.nix
│   ├── wayland
│   │   ├── default.nix
│   │   ├── hyprland
│   │   │   ├── default.nix
│   │   │   └── hyprland.conf
│   │   ├── swww
│   │   │   ├── default.nix
│   │   │   └── start.sh
│   │   ├── waybar
│   │   │   ├── config
│   │   │   ├── default.nix
│   │   │   └── style.css
│   │   └── wofi
│   │       └── default.nix
│   └── x11
│       ├── bspwm
│       │   ├── bspwmrc
│       │   └── default.nix
│       ├── default.nix
│       ├── picom
│       │   ├── default.nix
│       │   └── picom.conf
│       ├── rofi
│       │   ├── config.rasi
│       │   └── default.nix
│       └── sxhkd
│           ├── default.nix
│           └── sxhkdrc
├── nixshells
│   ├── c.nix
│   └── node.nix
└── README.md
```
this a modularized nixos config that uses home-manger to manage packages & 
dotfiles(program configuration files) each program/program related tools has its own 
nix module this might seem excessive but it is done for the purpose of organization 
and modularity the programs are nested in parent modules of greater evironment types 
e.g.(system, x11, wayland) so if need be whole environments can be disabled.

### System environments
my system module is a collection of programs i would use on any environment whether it be
tty, ssh, window manager, or full on desktop environment.

| Program | Description |
| ------- | ----------- |
| [bottom](https://github.com/ClementTsang/bottom) | system monitor |
| [firefox](https://hg.mozilla.org/mozilla-central/) | web browser |
| [git](https://github.com/git/git) | version control system |
| [home-manager](https://github.com/nix-community/home-manager) | nix user env management |
| [kitty](https://github.com/kovidgoyal/kitty) | Terminal emulator |
| [neofetch](https://github.com/dylanaraps/neofetch) | system info script |
| [neovim](https://github.com/neovim/neovim) | text edditor/ide |
| [nnn](https://github.com/jarun/nnn) | file manager |
| [pulse](https://github.com/pulseaudio/pulseaudio) | audio server |
| [pywal](https://github.com/dylanaraps/pywal) | theming tool |
| [tmux](https://github.com/tmux/tmux/wiki) | terminal multiplexer |
| [tuigreet](https://github.com/apognu/tuigreet) | display manager |
| [zip](https://github.com/kuba--/zip) | archive utilities |


### Desktop Environments
#### X11
the X11 module contains programs useing the x windowing system. these are programs
that are used to create a tiling binary space partioned window manager env.


| Program | Description |
| ------- | ----------- |
| [bspwm](https://github.com/baskerville/bspwm) | window manager |
| [picom](https://github.com/yshui/picom) | compositor |
| [rofi](https://github.com/davatorium/rofi) | program launcher(but it does more) |
| [sxhkd](https://github.com/baskerville/sxhkd) | simple x hotkey daemon |

#### Wayland
wayland is designed to be a answer to some of the fallbacks of the x windowing system
the modules is used to create a desktop environment similar to the x11 enviroment.
| Program | Description |
| ------- | ----------- |
| [hyprland](https://github.com/hyprwm/Hyprland) | tiling window manager |
| [swww](https://github.com/LGFae/swww) | walpaper daemon |
| [waybar](https://github.com/Alexays/Waybar) | highly configurble statusbar |
| [wofi](https://github.com/SimplyCEO/wofi) | program launcher |

### Development Environments
development enviroments are important aspect of development they allow a programmer to 
isolate the tools in their current environment to avoid colisions with other builds of 
those tools nix shells and nix flakes do this quite well as you can use isolated package
of specified versions and keep them separate from other environment installed on your 
system theres evironment along with nix entire configuration can be deployed on any system
with any hardware configuration given that that hardware can run nix.

#### C nix shell
| Program | Description |
| ------- | ----------- |
| [gcc](https://github.com/gcc-mirror/gcc) | GNU Compiler Collection |
| [gdb](https://sourceware.org/gdb/current/) | GNU Project Debugger |
| [cmake](https://github.com/Kitware/CMake) | build system generator |
| [valgrind](https://valgrind.org/downloads/repository.html) | memory leak thread error dectection |



