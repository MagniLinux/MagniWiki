+++
title = "Comparison of Tiling Window Managers"
description = """
This article provides an unbiased comparison of the most popular *tiling* window managers (as opposed to floating window managers). 
"""
date = 2020-04-27
[taxonomies]
category = ["Tiling WMs", "Software Comparisons"]
+++

## Comparison table

The following table lists the most popular tiling window managers alongside notable features, providing readers with a quick overview. 

<div class="table-container">
  <table class="table is-fullwidth is-striped is-narrow">
    <thead>
    <tr>
      <th style="max-width: 150px;word-wrap: break-word;">Window Manager</th>
      <th>Written in</th>
      <th>Configured with</th>
      <th>Management style</th>
      <th>System tray support</th>
      <th>On-the-fly reload</th>
      <th style="max-width: 150px;word-wrap: break-word;">Information bars</th>
      <th>Compositing</th>
      <th>Default Layout</th>
      <th>Pixel Usage</th>
      <th>External Control</th>
      <th>Library</th>
      <th>Multiple (n) monitor behavior</th>
      <th>ICCCM/EWMH compliant</th>
      <th>Maintenance</th>
    </tr>
  </thead>
  <tfoot>
    <tr>
      <th>Window Manager</th>
      <th>Written in</th>
      <th>Configured with</th>
      <th>Management style</th>
      <th>System tray support</th>
      <th>On-the-fly reload</th>
      <th>Information bars</th>
      <th>Compositing</th>
      <th>Default Layout</th>
      <th>Pixel Usage</th>
      <th>External Control</th>
      <th>Library</th>
      <th>Multiple (n) monitor behavior</th>
      <th>ICCCM/EWMH compliant</th>
      <th>Maintenance</th>
    </tr>
  </tfoot>
  <tbody>
    <th>alopex
</th>
<td>C</td>
<td>C (recompile)</td>
<td>Hybrid</td>
<td>None</td>
<td>No</td>
<td>Built-in; call script/program as first argument</td>
<td>External</td>
<td>max, h-stack, v-stack, h-tab</td>
<td>Variable borders, titles in-statusbar</td>
<td></td>
<td>Xlib</td>
<td>six tags, two views available by default</td>
<td></td>
<td>Active
</td>
    </tr>
    <th>Awesome
</th>
<td>C</td>
<td>Lua</td>
<td>Dynamic</td>
<td>Built-in</td>
<td>Yes</td>
<td>Built-in, images and text</td>
<td>External</td>
<td>max, nh-stack (and invert), nv-stack (and invert), free</td>
<td>Variable borders, optional h-tab titles</td>
<td>dbus (if enabled)</td>
<td>XCB</td>
<td>n-tags (workspaces). Per default 9  are enabled. <a rel="nofollow" class="external text" href="https://awesomewm.org/images/6mon.medium.png">Example</a></td>
<td>Yes</td>
<td>Active
</td></tr>
<tr>
<th>bspwm
</th>
<td>C</td>
<td>Anything</td>
<td>Hybrid</td>
<td>None</td>
<td>Yes</td>
<td>Can write internal state to a FIFO</td>
<td>External</td>
<td>v-split, h-split</td>
<td>Variable borders</td>
<td>via <code>bspc</code></td>
<td>XCB</td>
<td>Monitors hold Desktops</td>
<td>Yes</td>
<td>Active
</td></tr>
<tr>
<th>catwm
</th>
<td>C</td>
<td>C (recompile)</td>
<td>Dynamic</td>
<td>None</td>
<td>No</td>
<td>None</td>
<td>No</td>
<td>v-stack, max</td>
<td>1-pix borders</td>
<td></td>
<td>Xlib</td>
<td></td>
<td></td>
<td>Abandoned
</td></tr>
<tr>
<th>dswm
</th>
<td>Lisp</td>
<td>Lisp</td>
<td>Manual</td>
<td>None</td>
<td>Yes</td>
<td>Yes</td>
<td>No</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Abandoned
</td></tr>
<tr>
<th>dwm
</th>
<td>C</td>
<td>C (recompile)</td>
<td>Dynamic</td>
<td>Optional Patch</td>
<td>Optional</td>
<td>Built-in, reads from root window name</td>
<td>External</td>
<td>v-stack, max</td>
<td></td>
<td>via <a rel="nofollow" class="external text" href="https://dwm.suckless.org/patches/dwmfifo">dwmfifo</a></td>
<td>Xlib</td>
<td>n regions, 9 workspaces fixed to each region</td>
<td></td>
<td>Active
</td></tr>
<tr>
<th>echinus
</th>
<td>C</td>
<td>Text</td>
<td>Dynamic</td>
<td>None</td>
<td>Yes</td>
<td>ourico</td>
<td>External</td>
<td>v-stack, b-stack, max</td>
<td>Variable borders, optional titles</td>
<td></td>
<td>Xlib</td>
<td></td>
<td>Yes</td>
<td>Unknown
</td></tr>
<tr>
<th>euclid-wm
</th>
<td>C</td>
<td>Text</td>
<td>Hybrid</td>
<td>None</td>
<td>Yes</td>
<td>External</td>
<td></td>
<td>rows, columns</td>
<td>1-pix borders</td>
<td></td>
<td>Xlib</td>
<td></td>
<td></td>
<td>Dormant
</td></tr>
<tr>
<th>FrankenWM
</th>
<td>C</td>
<td>C (recompile)</td>
<td>Dynamic</td>
<td>None</td>
<td>No</td>
<td>No, outputs information to stdout, which can easily be parsed and displayed by an external monitor or panel (dzen2, conky, etc)</td>
<td>External</td>
<td>v-stack (and invert), h-stack (and invert), dual-v/h-stack, grid, fibonacci (vh-stack), rows, columns, max, free</td>
<td>Variable borders</td>
<td></td>
<td>XCB</td>
<td></td>
<td></td>
<td>Active
</td></tr>
<tr>
<th>herbstluftwm
</th>
<td>C</td>
<td>Text</td>
<td>Manual</td>
<td>None</td>
<td>Yes</td>
<td></td>
<td></td>
<td>rows, columns</td>
<td>1-pix borders</td>
<td>commands via herbstclient</td>
<td>Xlib and Glib</td>
<td>n regions, 9 workspaces visible in any region</td>
<td></td>
<td>Active
</td></tr>
<tr>
<th>i3
</th>
<td>C</td>
<td>Text</td>
<td>Dynamic</td>
<td>i3bar</td>
<td>Yes (Layout is preserved)</td>
<td>text piped to i3bar (<code>i3status</code>/<code>conky</code> and others can be used)</td>
<td>External</td>
<td>tree, v-split, h-split, stacked, tabbed, max, can be nested infinitely</td>
<td>None, 1-pix or 2-pix, optional titlebars, can hide edge borders</td>
<td>commands via ipc (or i3-msg, which uses ipc)</td>
<td>XCB</td>
<td>n regions</td>
<td>Yes</td>
<td>Active
</td></tr>
<tr>
<th>Ion3
</th>
<td>C</td>
<td>Lua</td>
<td>Manual</td>
<td>trayion</td>
<td>Yes</td>
<td>configurable</td>
<td>?</td>
<td>h-tab, max</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>Abandoned
</td></tr>
<tr>
<th>LeftWM
</th>
<td>Rust</td>
<td>toml (user settings) / Anything (themes)</td>
<td>Dynamic</td>
<td>None</td>
<td>Yes</td>
<td>Yes, many options through theme system</td>
<td>External</td>
<td>v-stack, columns, rows</td>
<td>Variable based on theme</td>
<td>supports <code>_NET_ACTIVE_WINDOW</code> and sending commands to a named pipe</td>
<td>Xlib</td>
<td>Workspaces and monitors are not tide. Many workspaces for monitor or many monitors for workspace</td>
<td>Yes</td>
<td>Active
</td></tr>
<tr>
<th>monsterwm
</th>
<td>C</td>
<td>C (recompile)</td>
<td>Dynamic</td>
<td>None</td>
<td>Optional, but windows are lost</td>
<td>No, outputs information to stdout, which can easily be parsed and displayed by an external monitor or panel (<code>dzen2</code>, <code>conky</code>, etc)</td>
<td>External</td>
<td>h-stack, v-stack, grid, max</td>
<td></td>
<td>supports <code>_NET_ACTIVE_WINDOW</code>, so external control can be supplied by <code>xdotool</code> and similar tools</td>
<td>Xlib primary and XCB fork</td>
<td>n workspaces per monitor</td>
<td></td>
<td>Abandoned
</td></tr>
<tr>
<th>Musca
</th>
<td>C</td>
<td>Text, own command set, C(recompile)</td>
<td>Manual</td>
<td>None</td>
<td>No, but allows running of musca commands on the fly</td>
<td>None</td>
<td>No</td>
<td>h-split, v-split, max</td>
<td></td>
<td>commands, hooks</td>
<td>Xlib</td>
<td></td>
<td></td>
<td>Abandoned
</td></tr>
<tr>
<th>Notion
</th>
<td>C, Lua</td>
<td>Lua, compatible with Ion3 configs</td>
<td>Manual</td>
<td>trayion, stalonetray</td>
<td>Yes</td>
<td>configurable</td>
<td>?</td>
<td>h-tab, max</td>
<td>Configurable borders and titlebars/tabs</td>
<td>EWMH, arbitrary Lua scripts which have access to the rich internal API</td>
<td>Xlib</td>
<td>n workspaces on each monitor. Supports on-the-fly changes in topology</td>
<td></td>
<td>Active
</td></tr>
<tr>
<th>qtile
</th>
<td>Python</td>
<td>Python</td>
<td>Dynamic</td>
<td>Yes</td>
<td>Yes</td>
<td>Yes</td>
<td>External</td>
<td>tree, v-split, h-split, stacked, tabbed, max</td>
<td>No borders, although customizable</td>
<td>Hooks, Server mode</td>
<td>XCB</td>
<td></td>
<td></td>
<td>Active
</td></tr>
<tr>
<th>Ratpoison
</th>
<td>C</td>
<td>Text</td>
<td>Manual</td>
<td>None</td>
<td>Yes</td>
<td>Yes</td>
<td>External</td>
<td>max</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>No</td>
<td>Active
</td></tr>
<tr>
<th>Snapwm
</th>
<td>C</td>
<td>Reloadable Text</td>
<td>Dynamic</td>
<td>None</td>
<td>Yes</td>
<td>Built-in, reads from root window name</td>
<td>External</td>
<td>nVertical, Fullscreen, nHorizontal, Grid, Center Stacking</td>
<td>Variable borders, no titles</td>
<td></td>
<td>Xlib</td>
<td>Number of desktops distributed evenly between monitors</td>
<td></td>
<td>Active
</td></tr>
<tr>
<th>Spectrwm
</th>
<td>C</td>
<td>Text</td>
<td>Dynamic</td>
<td>None</td>
<td>Yes</td>
<td>Built-in, reads from user script</td>
<td>No</td>
<td>nv-stack, nh-stack, max</td>
<td>1-pix borders, no titles</td>
<td></td>
<td>XCB</td>
<td>n regions, 10 workspaces visible in any region</td>
<td>Yes</td>
<td>Active
</td></tr>
<tr>
<th>Stumpwm
</th>
<td>Lisp</td>
<td>Lisp</td>
<td>Manual</td>
<td>None</td>
<td>Yes</td>
<td>Yes</td>
<td>No</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>No</td>
<td>Active
</td></tr>
<tr>
<th>sway
</th>
<td>C</td>
<td>Text (i3 compatible)</td>
<td>Dynamic</td>
<td>swaybar</td>
<td>Yes (Layout is preserved)</td>
<td>text piped to swaybar (<code>i3status</code>/<code>conky</code> and others can be used)</td>
<td>Yes</td>
<td>tree, v-split, h-split, stacked, tabbed, max, can be nested infinitely</td>
<td>None, 1-pix or 2-pix, optional titlebars, can hide edge borders</td>
<td>commands via ipc (or swaymsg, which uses ipc)</td>
<td>wlroots (wayland)</td>
<td>n regions</td>
<td>No</td>
<td>Active
</td></tr>
<tr>
<th>subtle
</th>
<td>C</td>
<td>Ruby</td>
<td>Manual</td>
<td>Built-in</td>
<td>Yes</td>
<td>Built-in (Ruby), external can be used as well</td>
<td>External</td>
<td>Variable grid</td>
<td>Variable borders, no titles</td>
<td>Hooks (Ruby), subtler (CLI), subtlext (Ruby extension)</td>
<td>Xlib</td>
<td>One workspace (view) per monitor (screen), placement on views via tags and per runtime</td>
<td>Yes</td>
<td>Active
</td></tr>
<tr>
<th>Wingo
</th>
<td>Go</td>
<td>Text</td>
<td>Dynamic</td>
<td>None</td>
<td>Yes</td>
<td>No</td>
<td>External</td>
<td>floating, nv-stack, nh-stack, max</td>
<td>title bars in floating, skinny borders in tiling</td>
<td>via <a rel="nofollow" class="external text" href="https://github.com/BurntSushi/wingo/blob/master/HOWTO-COMMANDS">wingo-cmd</a> or UNIX sockets in any programming language</td>
<td><a rel="nofollow" class="external text" href="https://github.com/BurntSushi/xgb">X Go Binding</a></td>
<td>n regions, workspaces visible in any region</td>
<td>Yes</td>
<td>Active
</td></tr>
<tr>
<th>WMFS
</th>
<td>C</td>
<td>Text</td>
<td>Dynamic</td>
<td>Built-in</td>
<td>Yes</td>
<td>Built-in, set with command, color text, images</td>
<td>External</td>
<td>nh-stack (and invert), nv-stack (and invert), mirror-v, mirror-h, grid, free, max</td>
<td>Variable borders, titles or no titles</td>
<td>commands</td>
<td>Xlib</td>
<td>Up to 36 tags(workspaces) per screen</td>
<td>Yes</td>
<td>Active
</td></tr>
<tr>
<th>wmii
</th>
<td>C</td>
<td>Anything</td>
<td>Dynamic</td>
<td>witray</td>
<td>Yes</td>
<td>Built-in</td>
<td>External</td>
<td>columns, max, v-tab</td>
<td>titles</td>
<td><a rel="nofollow" class="external text" href="http://9p.cat-v.org">9P filesystem</a></td>
<td></td>
<td>one big region</td>
<td>Yes</td>
<td>Abandoned
</td></tr>
<tr>
<th>xmonad
</th>
<td>Haskell</td>
<td>Haskell</td>
<td>Dynamic</td>
<td>None</td>
<td>Yes</td>
<td>No</td>
<td>Yes, with xmonad-contrib and an external manager</td>
<td>nv-stack, nh-stack, max</td>
<td>Variable borders, no titles</td>
<td>via <a rel="nofollow" class="external text" href="http://xmonad.org/xmonad-docs/xmonad-contrib/XMonad-Hooks-ServerMode.html">XMonad-Hooks-ServerMode</a></td>
<td>Xlib</td>
<td>n regions, 9 workspaces visible in any region</td>
<td>Yes /&#160;?</td>
<td>Active
</td></tr>
    </tbody>
  </table>
</div>

{% tip(head="Tip:") %}

External control can also be achieved by programs like xdotool which simulate keystrokes.

{% end %}


### Management style

Dynamic management emphasizes automatic management of window layouts for speed and simplicity. Manual management emphasizes manual adjustment of layout and sizing with potentially more precise control, at the cost of more time spent moving and sizing windows.
Layouts

#### A number of common layout types appear in several tiling WMs, although the terminology varies somewhat.

* max: one window shown fullscreen (with or without a status bar, title and borders). Aka: monocle (dwm, monsterwm).
* h-stack: master area in top half, other windows stack up horizontally in the bottom half. The master area may be resizable. May be inverted top-bottom (wmfs). Aka: bottom stack (dwm), bstack(monsterwm).
* v-stack: master area in left half, other windows stack up vertically in the right half. The master area may be resizable. May be inverted left-right (wmfs). Aka: tile (dwm, monsterwm).
* nh-stack: h-stack allowing >=1 windows in master area. Aka: nbstack (dwm)
* nv-stack: v-stack allowing >=1 windows in master area. Aka: ntile (dwm)
* mirror-h: nh-stack with stacks above and below the master area
* mirror-v: nv-stack with stacks to the left and right of the master area
* h-tab: one window shown fullscreen with all window titles shown horizontally (like browser tabs)
* v-tab: one window shown fullscreen with all window titles shown vertically. Aka: stack (wmii).
* h-split: a keybinding splits the current window horizontally creating space for another
* v-split: a keybinding splits the current window vertically creating space for another
* columns: manual layout style which treats windows as belonging to vertical columns
* rows: manual layout style which treats windows as belonging to horizontal rows
* grid: window positions and sizes based on a regular NxM grid. May be automatic (like wmfs, monsterwm) or manual (like Subtle).

#### Key bindings

Tiling window managers are usually designed to be used entirely with the keyboard or with keyboard & mouse. This is for speed (reaching for and moving a mouse is slow) and ease of use. Sensible key bindings are crucial to making workflow fast and efficient. Some default sets are better than others, but generally the keys can be rebound as desired by the user. 