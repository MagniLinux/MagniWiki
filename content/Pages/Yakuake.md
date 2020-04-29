+++
title = "Yakuake"
description = """
Yakuake is a top-down terminal for KDE in the style of Guake for GNOME, Tilda or the terminal used in Quake. 
"""
date = 2020-04-29
[taxonomies]
category = ["KDE", "Terminal Emulators"]
+++

## Installation

Install the yakuake package.

## Usage

Once installed, you can start Yakuake from the terminal with:

```sh
yakuake
```

After Yakuake has started you can click on configure Yakuake by clicking on the `Open Menu` button (middle button on the bottom right hand side of the interface) and select `Configure Shortcuts` to change the hotkey to drop/retract the terminal automatically, by default it is set to `F12`.

## Yakuake Scripting

Like Guake, Yakuake allows to control itself at runtime by sending the D-Bus messages. Thus it can be used to start Yakuake in a user defined session. You can create tabs, assign names for them and also ask to run any specific command in any opened tab or just to show/hide Yakuake window, manually in a terminal or by creating a custom script for it.

Example of such a script is given below. This includes opening tabs, renaming tabs, splitting shells, and running commands.

```sh
#!/bin/bash
# Starting Yakuake based on user preferences. Information based on http://forums.gentoo.org/viewtopic-t-873915-start-0.html
# Adding sessions from previous website is broken, use this: http://pawelkoston.pl/blog/sublime-text-3-cheatsheet-modules-web-develpment/

# This line is needed in case Yakuake does not accept fcitx inputs.
/usr/bin/yakuake --im /usr/bin/fcitx --inputstyle onthespot &

# gives Yakuake a couple seconds before sending dbus commands
sleep 2      
                                                 
# Start htop in tab and split to user terminal and run iotop                                                        
TERMINAL_ID_0=$(qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.terminalIdsForSessionId 0)
qdbus org.kde.yakuake /yakuake/tabs setTabTitle 0 "user"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 0 "htop"
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.splitTerminalLeftRight "$TERMINAL_ID_0"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 1 "iotop

# Start split root sessions (password prompt) top and bottom                                                                                
SESSION_ID_1=$(qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession)
TERMINAL_ID_1=$(qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.terminalIdsForSessionId "$SESSION_ID_1")
qdbus org.kde.yakuake /yakuake/tabs setTabTitle 1 "root"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 2 "su"
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.splitTerminalTopBottom "$TERMINAL_ID_1"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 3 "su" 

# Start irssi in its own tab.                                                                                          
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession
qdbus org.kde.yakuake /yakuake/tabs setTabTitle 2 "irssi"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 4 "ssh home -t 'tmux attach -t irssi; bash -l'" 

# Start split ssh shells in own tab.                                                                                   
SESSION_ID_2=$(qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession)
TERMINAL_ID_2=$(qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.terminalIdsForSessionId "$SESSION_ID_2")
qdbus org.kde.yakuake /yakuake/tabs setTabTitle 3 "work server"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 5 "ssh work"
qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.splitTerminalLeftRight "$TERMINAL_ID_2"
qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal 6 "ssh work"
```

### dbus-send instead of qdbus

You can replace `qdbus` bundled with Qt with more common `dbus-send`. For example, to show/hide Yakuake:

```sh
dbus-send --type=method_call --dest=org.kde.yakuake /yakuake/window org.kde.yakuake.toggleWindowState
```

## See Also

* [Yakuake scripting on coderwall.com](https://coderwall.com/p/kq9ghg/yakuake-scripting)
