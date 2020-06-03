# Dotfiles
My dotfiles.

### Screenshot

![Screenshot]("./screenshot.png")

### Dependencies
- bspwm (simple window manager)
- lemonbar (simple bar)
- sxhkd (bspwm's keybindings daemon)
- bash (for lemonbar)
- mocp (music player, you can use another)
- xset (for lemonbar, display current keyboard layout)
- acpi (for lemonbar, display battery capacity)
- busybox (optional, you can use CoreUtils, toybox, etc...)
- alsa-utils (btw i use pure ALSA)
- feh (for wallpaper)
- scrot (for making screenshots)
- setxkbmap (setup keyboard layout)
- xsetroot (fix mouse pointer icon)
- xcompmgr (composite manager, you can use another)

### Themes
GTK theme: [Ant-Dracula](https://github.com/EliverLara/Ant-Dracula)
XFCE4-Terminal theme: [Dracula](https://hexang.org/yh/iTerm2-Color-Schemes/-/blob/master/xfce4terminal/colorschemes/Dracula.theme)
XFCE4-Terminal font: [Terminus](http://terminus-font.sourceforge.net)
Lemonbar font: default
Wallpaper: [click](https://gitlab.com/artemkafill/dotfiles/-/raw/master/wallpapers/19.jpg) (thanks to [Artyom Khudyakov](https://vk.com/still_compiling))
### Installation

Put bspwmrc to ~/.config/bspwm
Put sxhkdrc to ~/.config/sxhkd
Execute "feh --bg-scale <path to dotfiles>/wallpaper.jpg"
Edit ~/.config/bspwm/bspwmrc:
- Line 6 - change my home directory path to your own (for ex. - /home/unix -> /home/user)
- Line 7 - change lemonbar.sh`s absolute path to your own (for ex. - /home/unix/Projects/dotfiles/lemonbar.sh -> /home/user/configs/lemonbar.sh)
