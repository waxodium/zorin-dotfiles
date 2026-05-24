# ![Zorin](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyLjI2ZW0iIGhlaWdodD0iMmVtIiB2aWV3Qm94PSIwIDAgMjU2IDIyNyI+Cgk8cGF0aCBkPSJNMCAwaDI1NnYyMjdIMHoiIGZpbGw9Im5vbmUiIC8+Cgk8cGF0aCBmaWxsPSIjMGFmIiBkPSJNMTI1LjkyOCAwTDY0LjE1OS4wMzRsLTE3Ljg4NCAzMS4zNWgxNjMuNTUzTDE5Mi4xNS4yMDV6TTI0LjE0MyA3MC4yOEwwIDExMi45MWwyMi40OTMgMzkuOTY0aDguNjg0bDEyMi43NDYtODIuNTkzem0xOTkuNTEgMEwxMDAuODkgMTUyLjg3NWgxMzIuNjg2TDI1NiAxMTMuMjU0bC0yNC4xNzgtNDIuOTczek00NC40NyAxOTEuNzczbDE5LjM5OCAzNC4xODZsNjYuMjA1LjIwN2w2MS43ODYtLjAzNWwxOS42MDQtMzQuMzU4eiIgLz4KPC9zdmc+Cg==) My Zorin OS dotfiles


<details>
<summary>My Switch to Linux story ✨</summary> 
<p>After the huge Windows 11 failure that forced me to switch to Linux, I've been running ZorinOS version 18^ for longer than I can remember. And ZorinOS is the distribution I choose. When I first started using Linux, I felt overwhelmed. I was concerned I would break it, so I kept rebooting back to Windows. Indeed, I did. Exactly three times, I broke the operating system. However, on the fourth attempt. I became more cautious, and from December 2025 until May 2026, I daily drive ZorinOS every day.</p>


<p>I eventually made the OS my home. I began experimenting with configurations. Additionally, because prorgramming is more liberal than Windows, I took it seriously. After that, I began riceing. It's because I've seen so many amazing r/UnixPorn desktops and quickshell demonstrations on YouTube. I don't have the same configuration and looks as others. But I can still do my work without spending a lot of time on tweaking UI while still aesthetically pleasing.</p>
</details>



### Details

| Component | Software / Details |
| :--- | :--- |
| **OS** | ZorinOS 18.1 |
| **Display Server** | Wayland |
| **Compositor** | [Hyprland](https://hyprland.org/) |
| **Primary Shell** | Bash |
| **Status Bar** | [eww (ElKowar's Wacky Widgets)](https://github.com/elkowar/eww) |
| **Application Launcher** | [fuzzel](https://codeberg.org/dnkl/fuzzel) |
| **Wallpaper Manager** | [awww](https://codeberg.org/LGFae/awww) |

### Preview
<!-- <p align="center">
  <img width="720" height="406" src="https://github.com/user-attachments/assets/2c26a6b7-ea7e-40f6-a20a-81e93acb43a2"/>
  <img width="720" height="406" alt="rice" src="https://github.com/user-attachments/assets/9b6fe875-4c13-4716-a79e-852a42dba86a" />
  <img width="720" height="406" alt="mc" src="https://github.com/user-attachments/assets/39dee3f2-274c-40da-8786-e5e30eada55b" />
  <img width="720" height="406" alt="zorin-btw" src="https://github.com/user-attachments/assets/ad988349-0481-4765-b971-a9cffddc2da2" />
</p> -->

<p align="center">
  <img src="https://github.com/user-attachments/assets/2c26a6b7-ea7e-40f6-a20a-81e93acb43a2" width="49%" height="51%" alt="Desktop Overview" />
  <img src="https://github.com/user-attachments/assets/9b6fe875-4c13-4716-a79e-852a42dba86a" width="49%" height="51%" alt="Rice Setup" />
</p>
<p align="center">
  <img src="https://github.com/user-attachments/assets/39dee3f2-274c-40da-8786-e5e30eada55b" width="49%" height="51% "alt="Menu Configuration" />
  <img src="https://github.com/user-attachments/assets/ad988349-0481-4765-b971-a9cffddc2da2" width="49%" height="51%" alt="Zorin Environment" />
</p>



## Used Programs
- **Terminal Emulator:** Alacritty
- **Text Editor:** Neovim (`nvim`)
- **File Manager:** Nautilus (GNOME Files)
- **Web Browser:** Zen Browser

### Custom Enhancements
*   **System Fetch:** Fastfetch
*   **Terminal Clock App:** [tickterm](https://github.com/waxodium/tickterm)
*   **Chat Client:** Vencord for discord

### 🎨 GTK Applications Theme
ZorinOS is GNOME base by default, all of GNOME applications themes located in 
[`./gtk-4.0`](./gtk-4.0)

## Requirements
- flatpak (optional)
- snap (optional)

### Typography & Assets
| Asset Type | Target Path | Required For |
| :--- | :--- | :--- |
| **Fonts** | `~/.local/share/fonts/` | System Fonts |
| **Wallpapers** | `~/Pictures/Wallpapers/` | `awww` Daemon |

> [!NOTE]
> If you updated your wallpaper directory elsewhere. Make sure to update those too

### Language & Compiler
| Languages & Compiler | Required For |
| :--- | :--- |
| rustc, cargo | awww, alacritty |
| C/C++, gcc or clang |  hyprland, fuzzel, fastfetch |
| Go, Golang | to compile certain modular drop-in components. |
| JavaScript, Node.js| Vencord & NeoVim's Language server |
| Lua, Lua Compiler | NeoVim |

### Build Systems

If you compile these tools from source rather than installing pre-compiled Debian packages, you will need these automation tools:

<details>
<summary>Build from Source requirement</summary>

- meson & ninja: The standard build chain setup for modern Wayland environments.

`Required by: hyprland and fuzzel.`

- cmake & make: Traditional cross-platform build generators.

`Required by: fastfetch.`

- pkgconf: 
To allow the build systems to find where libraries are hidden on your system.

</details>
you can may choose to skip this requirement section if you're not installing tools and programs from source. Source installation is already documented from each project 👍

# Setup and Install
> [!CAUTION]
> To set up and use my configuration properly, the setup must be done step-by-step. And BACKUP any of your conflicting configurations if there any


`zorin-dotfiles` Repository tree
```
.
├── alacritty/
│   └── alacritty.toml
├── eww/
│   ├── eww.scss
│   └── eww.yuck
├── fastfetch/
│   ├── config.jsonc
│   └── logo.txt
├── fuzzel/
│   └── fuzzel.ini
├── gtk-4.0/
│   ├── colors.css
│   ├── gtk.css
│   └── settings.ini
├── hypr/
│   └── land
└── nvim/
    ├── dialogs.vim
    ├── init.vim
    └── lua/
        ├── lsp-config.lua
        └── plugins.lua
```

Make sure to clone this repository
```
git clone https://github.com/waxodium/zorin-dotfiles
cd zorin-dotfiles
```

### Setup Fonts
The first thing to do is to install [Firacode Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FiraCode.zip). then,

1. By clicking the link of [Firacode Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FiraCode.zip). You will get a direct install of the fonts.
2. After installation is completed, a new zip file named `FiraCode.zip` will appear in your `~/Downloads` folder
3. Proceed to extract the `FiraCode.zip` file
4. The extraction will unpack a new folder named `FiraCode`. Inside of `FiraCode` folder, select all of `.ttf` files and move them to `~/.local/share/fonts`
5. Open your terminal and update your system font index:
```bash
fc-cache -fv
```

### Setup GTK-4.0 (For Nautilus file manager)
ZorinOS has native support of gtk4.0. So, replace your existing default theme with this one by removing or moving the default config folder and copy this theme.

```
cp -r ./gtk-4.0 ~/.config
```

### Setup new Terminal
Install Alacritty via the snap store or

```
sudo snap install alacritty --classic
```

Visit [Alacritty Installation](https://github.com/alacritty/alacritty/blob/master/INSTALL.md) to see more options other than snap.

After the alacritty installation is completed. Copy the `./alacritty` folder to `~/.config`

```
cp -r alacritty ~/.config
```


### Setup Fuzzel 
Install Fuzzel from apt
```
sudo apt install fuzzel
```

or see [fuzzel](https://codeberg.org/dnkl/fuzzel) from source

Copy `./fuzzel` folder to `~/.config`
```
cp -r fuzzel ~/.config
```

### Setup Hyprland
Requirements:
- jq
- playerctl
- brightnessctl
- awk
- wpctl OR alsa-utils (for audio fallback)


Install hyprland from apt or it's source
```
sudo apt install hyprland
```

> [Source Hyprland Install](https://github.com/hyprwm/hyprland)

when Hyprland installation and config requirements is complete, add the config to hyprland by running:
```
cat >> ~/.config/hypr/hyprland.conf ./land
```
### Setup NeoVim
Documentation for NeoVim install from: https://neovim.io/doc/install/

Install NeoVim from snap is also an option. But it is unsure that configuration will work. Manual binary install is reccomended for reliable usage and configs

Make sure all the requirements are met for the config:

```
sudo apt install nodejs npm
sudo npm install -g typescript typescript-language-server
sudo npm install -g vscode-langservers-extracted
sudo npm install -g lemminx
```

- [emmit-vim](https://github.com/mattn/emmet-vim)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [packer.nvim](https://github.com/wbthomason/packer.nvim)
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

After all requirements are installed. Proceed to copy the NeoVim config into the `~/.config`

```
cp -r ./nvim ~/.config
```

Now, initialize all of the config with packer.nvim. Run this in the terminal:
```
nvim +PackerSync
```

### Setup Fastfetch
Install fastfetch from apt
```
sudo apt install fastfetch
```

Source and Docs: https://github.com/fastfetch-cli/fastfetch

Copy fastfetch config to `~/.config`
```
cp -r ./fastfetch ~/.config
```

### Setup EWW
Install [eww (ElKowar's Wacky Widgets)](https://github.com/elkowar/eww)

And setup by copying `./eww` to `~/.config`
```
cp -r ./eww ~/.config
```

Initialize eww:
```
eww daemon
eww open bar
```

### Vencord Theme
https://github.com/waxodium/lollicord

---

<h1 align="center">~END of CONFIG~</h1>

# Additionals
All of the above content is a documentation of my complete zorin Desktop setup.
And this section, is for additional configuration of my desktop.

- Disable GDM3
> My ZorinOS GDM3 is disabled for my desktop. And I use the ttyd zorin login instead. After gdm3 is disabled and killed. I customized the ttyd login.
    
This is the code block for my specific ZorinOS ttyd login located in `~/.bash_profile`
```
    if [ -f ~/.bashrc ]; then
        . ~/.bashrc
    fi

    if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
        exec /usr/bin/start-hyprland
    fi
```

    
And this is customized ttyd on `/etc/issue` file
```
    ▄▄▄▄▄▄▄▄▄                         ▄▄▄▄▄    ▄▄▄▄▄▄▄ 
    ▀▀▀▀▀████             ▀▀        ▄███████▄ █████▀▀▀ 
        ▄███▀ ▄███▄ ████▄ ██  ████▄ ███   ███  ▀████▄  
     ▄███▀    ██ ██ ██ ▀▀ ██  ██ ██ ███▄▄▄███    ▀████ 
    █████████ ▀███▀ ██    ██▄ ██ ██  ▀█████▀  ███████▀ 
                                                   
    date: \d  |  time: \t  |  terminal: \l
```

# Keybinds
My Zorin Desktop configuration is entirely personalized. I never intended for it to be customisable. But it's still free to make adjustments for any reason of use.

And below, is a documentation of my desktop keybinds

## Hyprland
### Application Launching and Menu
| Shortcut | Action | Target Software |
| :--- | :--- | :--- |
| Super + T | Launch  | alacritty |
| Super + L | Toggle Menu for wallpaper selection | fuzzel |
| Super + Alt + Space | Toggle on and off the Menu | fuzzel |

### Window Management
| Shortcut | Action |
| :--- | :--- |
| Super + Ctrl + Left | Move active window Left |
| Super + Ctrl + Right | Move active window Right |
| Super + Ctrl + Up	| Move active window Up|
| Super + Ctrl + Down | Move active window Down |
| Super + Alt + Left / Right | Resize active window horizontally |
| Super + Alt + Up / Down | Resize active window vertically |
| Super + Left Mouse Click | Interactive Drag & Move Window frame location |
| Super + Right Mouse Click | Drag and interact with window |

### Workspaces & Special Virtual Desktops
| Shortcut | Action |
| :--- | :--- |
| Super + 1-0 | Jump straight to target workspace viewport (1->10)|
| Super + Shift + 1-0| Move the focused window container instantly to target workspace viewport |
| Super + Scroll Mouse Wheel | Cycle through active workspaces |
| Super + S | Toggle target Special Workspace container view (``magic``) |
| Super + Shift + S | Move the focused window container straight down into the magic background drawer |

|  Audio Output |  Audio Input | Media Control |
| :--- | :--- | :--- |
| **XF86AudioRaiseVolume**: Volume +5% | **XF86AudioMicMute**: Toggle Mic | **XF86AudioPlay**: Play/Pause |
| **XF86AudioLowerVolume**: Volume -5% | | **XF86AudioPause**: Play/Pause |
| **XF86AudioMute**: Toggle Mute | | **XF86AudioNext**: Next Track |
| | | **XF86AudioPrev**: Previous Track |


## NeoVim

The leader key is configured as Space [let mapleader = " "].

### Navigation, Menus & Windows

| Shortcut | Mode | Action |
| :--- | :--- | :--- |
| Space | Normal | Enter Insert mode |
| Space + Space | Normal | Toggle Floating Command Menu |
| Leader + Leader | Normal | Show Floating Command Menu |
| Esc | Normal | Clear search match highlights |
| Enter | Normal | Open a new line below |
| Backspace | Normal | Delete character under cursor |
| Ctrl + e | Normal / Insert / Terminal | Toggle Sidebar File Explorer (NvimTree) |
| Ctrl + q | Normal / Insert / Terminal | Smart Exit window or quit editor |

### Fuzzy Finder (Telescope)

| Shortcut | Mode | Action |
| :--- | :--- | :--- |
| Ctrl + f | Normal / Insert | Live Grep search text across project |
| Ctrl + p | Normal / Insert | Fuzzy find files by name |

### Editing, Clipboard & Undo

| Shortcut | Mode | Action |
| :--- | :--- | :--- |
| Ctrl + s | Normal | Save current file |
| Ctrl + s | Insert | Save current file and stay in Insert mode |
| Ctrl + z | Normal | Undo last change |
| Ctrl + z | Insert | Undo last change and stay in Insert mode |
| Ctrl + y | Normal | Redo last change |
| Ctrl + y | Insert | Redo last change and stay in Insert mode |
| Ctrl + a | Normal / Insert | Select all text |
| Ctrl + c | Visual | Copy selection to system clipboard |
| Ctrl + v | Normal | Paste from system clipboard |
| Ctrl + v | Insert | Paste from system clipboard inline |
| Ctrl + k | Normal / Insert | Delete (Cut) current line |
| Ctrl + k | Visual | Delete (Cut) selected lines |

### Terminal & Snippets

| Shortcut | Mode | Action |
| :--- | :--- | :--- |
| Ctrl + t | Normal / Insert | Open customized Floating Terminal |
| Ctrl + t | Terminal | Close and wipe out floating terminal safely |
| ! ! | Insert | Expand HTML5 Boilerplate (HTML files only) |
| , , | Insert | Trigger Emmet expansion workflow |

### Custom Commands

| Command Layout | Action Performance |
| :--- | :--- |
| :Sel &lt;line&gt; | Jumps cursor instantly to target line number |
| :Sel &lt;from&gt;-&lt;to&gt; | Highlights and selects specified line brackets visually |

