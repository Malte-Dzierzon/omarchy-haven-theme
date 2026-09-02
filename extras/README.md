# extras — optional, wird bei `omarchy theme install` ignoriert

Dieser Ordner enthält Dateien, die **nicht** Teil des offiziellen Omarchy-Themes sind, aber lokal nützlich sein können:

- `alacritty.toml`, `foot.ini`, `ghostty.conf`, `kitty.conf`, `vscode.json`, `neovim.lua`, `hyprland.conf` — werden bei Installation aus Git **gedroppt** und aus `colors.toml` regeneriert (Sicherheit). Nur lokal unter `~/.config/omarchy/themes/haven/` behalten wenn du sie wirklich custom brauchst.
- `waybar.css`, `wofi.css`, `walker.css`, `swayosd.css`, `mako.ini`, `vencord.theme.css`, `warp.yaml`, `zellij.kdl`, `aether.zed.json`, `hyprlock.conf` — kein Teil von Omarchy's Standard-Theming (Omarchy nutzt Quickshell/shell.toml, nicht Waybar). Werden zwar kopiert, aber nie angewendet.

Wenn du sie teilen willst: dokumentiere in Haupt-README und lass User manuell kopieren.
