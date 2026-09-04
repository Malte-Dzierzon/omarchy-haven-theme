#!/bin/bash
# theme-set hook: apply the theme's gtk.css (if it ships one) to the live
# GTK 3/4 config locations. Omarchy's theme engine never touches gtk.css,
# so without this hook a theme-owned gtk.css would go stale on theme switches.
THEME_NAME=$1
THEME_GTK="$HOME/.config/omarchy/themes/$THEME_NAME/gtk.css"

[[ -f $THEME_GTK ]] || exit 0

mkdir -p "$HOME/.config/gtk-3.0" "$HOME/.config/gtk-4.0"

# Symlink-safe: a dest symlink pointing at this very file is already correct.
# A plain `cp` would write THROUGH a foreign symlink and corrupt its target,
# so remove anything that is not already the right content first.
for dest in "$HOME/.config/gtk-3.0/gtk.css" "$HOME/.config/gtk-4.0/gtk.css"; do
  if [[ -L $dest && $(readlink -f "$dest") == $(readlink -f "$THEME_GTK") ]]; then
    continue
  fi
  if cmp -s "$THEME_GTK" "$dest" 2>/dev/null; then
    continue
  fi
  rm -f "$dest"
  cp "$THEME_GTK" "$dest"
done
