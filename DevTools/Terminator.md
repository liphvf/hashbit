# Terminator
## Install:
### Debian & Ubuntu:
- `sudo apt-get install terminator`

### Archlinux:
- `sudo pacman -S terminator`

## Terminator Short Cuts

Short Cut    | Action
------------ | ------------------------------------------
Ctrl-Shift-E | will split the view vertically.
Ctrl-Shift-O | will split the view horizontally.
Ctrl-Shift-P | will focus be active on the previous view.
Ctrl-Shift-N | will focus be active on the next view.
Ctrl-Shift-W | will close the view where the focus is on.
Ctrl-Shift-Q | will exit terminator.
Ctrl-Shift-X | will focus active window and  enlarge it

## Mudanças em settings:
- Botão direito > Preferences > Profiles > Select: default > Background: Transparent: 0.9
- Botão direito > Preferences > Profiles > Select: default > Scrolling > Scrollbar: Disabled
- Botão direito > Preferences > Profiles > Select: default > Scrolling > Scrollback: Infinite Scrollback


## Adicionar o terminator ao KDE Dolphin

- Adicione o código a baixo na pasta: `.local/share/kservices5/ServiceMenus/`
- Reload o Dolphin: `kbuildsycoca5`

```
[Desktop Entry]
Name=Terminator
Comment=Multiple terminals in one window
Icon=terminator
Encoding=UTF-8
Type=Service
ServiceTypes=KonqPopupMenu/Plugin,all/all
Actions=openTerminator

[Desktop Action openTerminator]
Name=Open Terminator
Name=Terminator
Icon=terminator
Exec=terminator --working-directory %f

```

- [Arch Forum](https://bbs.archlinux.org/viewtopic.php?id=201441)
- [KDE Forum](https://forum.kde.org/viewtopic.php?f=223&t=128621)

## Adicionando ao Thunar.

Em custom action, adicione `terminator --working-directory %f`
