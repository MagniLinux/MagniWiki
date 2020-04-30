+++
title = "Dolphin"
description = """
Dolphin is the default file manager of KDE. For the video game console emulator, see Dolphin emulator. 
"""
date = 2020-04-29
[taxonomies]
category = ["KDE", "File Managers"]
+++

## Installation

Install the dolphin package.

For version control and Dropbox support, install dolphin-plugins. To enable the relevant plugin go to _Settings > Configure Dolphin... > Services_.

### Compare Files

The _Compare files_ dialog depends on kompare. Alternatively, you can compare files in any diff tool (such as meld) by selecting two files, right clicking, selecting open with, and then the diff tool. 

### File Previews

* kdegraphics-thumbnailers: Image files and PDFs
* kimageformats: Gimp .xcf files
* resvgAUR: Fast and accurate SVG image thumbnails
* kdesdk-thumbnailers: Plugins for the thumbnailing system
* ffmpegthumbs: Video files (based on ffmpeg)
* raw-thumbnailer: .raw files
* taglib : Audio files
* kde-thumbnailer-apkAUR: Android application package files
* kde-thumbnailer-blenderAUR: Blender application files
* kde-thumbnailer-epubAUR: Electronic book files

Enable preview showing of required file type in _Settings > Configure Dolphin... > General > Previews_.

### View Audio CDs

Support for audio CDs is provided by the kio extension audiocd-kio.

## Usage

### Open Terminal

Dolphin and other KDE applications use konsole by default. To change the default terminal emulator, run `kcmshell5 componentchooser` and select _Terminal Emulator > Use a different terminal program_.

Some users will not have the module installed. Instead, the default terminal can be changed by modifying the kdeglobals configuration `~/.config/kdeglobals`, and adding `TerminalApplication=terminalname`under the `[General]` tab. Note, it is likely that this method will not make the internal Dolphin terminal window (opened with `F4`) use the terminal specified in the kdeglobals configuration.

### KIO Slaves

Dolphin uses _KIO slaves_ for network access, trash and other functionality, unlike GTK file managers which use GVFS. Available protocols are shown in the location bar (editable mode) [1]. To quickly bookmark them, right-click in the workspace, and select "Add to Places".

You can install KIO slaves manually. For example, to browse your Google Drive in Dolphin, install kio-gdrive.

## Troubleshooting

### Device names shown as "X GiB Harddrive"

Create a filesystem label, or a partition label, and Dolphin will show this label in the device list instead of the size. See Persistent block device naming#by-label.

### Transparent fonts

Fonts in selection frames may become transparent when using the GTK Qt style. Native Qt styles such as Cleanlooks and Oxygen are unaffected.

### Crashes on mounted SMB share

See Samba#Unable to overwrite files.

### Icons not showing

If icons are not displaying on Dolphin, and an error similar to "Pixmap is a null Pixmap" appears on the console, try putting this line in your `~/.profile`

```sh
[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"
```

If icons are still not able display, and same error "Pixmap is a null Pixmap", run `qt5ct`, looking at "icon theme" tab. Choose one icon theme and apply.

### Icons are too big

If icons are too big on Dolphin in not KDE environment, start it with:

{% cli() %}
XDG_CURRENT_DESKTOP=KDE KDE_SESSION_VERSION=5 QT_AUTO_SCREEN_SCALE_FACTOR=0 dolphin
{% end %}

### Mismatched folder view background colors

When running Dolphin under something other than Plasma, it is possible the background color in the folder view pane will not match the system Qt theme. This is because Dolphin reads the folder view's background color from the `[Colors:View]` section in `~/.config/kdeglobals`. Change the following line to the R,G,B values you prefer:

```sh
~/.config/kdeglobals

...
[Colors:View]
BackgroundNormal=23,24,24
...
```

Alternatively, use kvantum-qt5 to manage your Qt5 theming. For instructions on usage see the Kvantum project homepage. 

## See Also

* [Wikipedia:Dolphin (file manager)](https://en.wikipedia.org/wiki/Dolphin_(file_manager))
* [KDE userbase: Dolphin](https://userbase.kde.org/Dolphin)
* [Dolphin Handbook](https://docs.kde.org/stable/en/applications/dolphin/index.html)
