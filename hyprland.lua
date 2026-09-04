-- Haven — sharp but atmospheric.
-- Hard geometry (rounding = 0), soft motion, cold muted colors, subtle depth.
-- Source of truth for colors: colors.toml (slate #97a6bb, teal #83a2a3,
-- frost #e9efeb, muted #62676c, warm sand #bfae87, fresh sage #a4b89b).
-- Roles: blue = structure (borders, focus), sand = action (active, pressed),
-- green = go/live (progress, ok), cyan = secondary selection.

local activeBorderColor = {
colors = { "rgba(97a6bbee)", "rgba(83a2a3ee)" },
angle = 45,
}

local inactiveBorderColor = "rgba(62676c99)"

hl.config({
general = {
col = {
active_border = activeBorderColor,
inactive_border = inactiveBorderColor,
},
gaps_in = 2,
gaps_out = 2,
border_size = 2,
},
group = {
col = {
border_active = activeBorderColor,
border_inactive = inactiveBorderColor,
},
groupbar = {
text_color = "rgb(e9efeb)",
text_color_inactive = "rgba(62676c)",
col = {
active = "rgba(83a2a3)",
inactive = "rgba(070e15)",
},
},
},
decoration = {
rounding = 0,
shadow = {
enabled = true,
render_power = 2,
range = 20,
color = "rgba(00000040)",
},
blur = {
enabled = true,
size = 3,
passes = 2,
},

```
-- Cinematic focus: inactive windows lose attention, the active one keeps it.
dim_inactive = true,
dim_strength = 0.15,
```

},
})

-- Haven motion: windows emerge from the dark, they never fly in.
-- If you notice an animation consciously, it is too strong.

hl.curve("havenEase", { type = "bezier", points = { { 0.22, 1 }, { 0.36, 1 } } })
hl.curve("havenFade", { type = "bezier", points = { { 0.4, 0 }, { 0.2, 1 } } })

hl.animation({ leaf = "windowsIn", enabled = true, speed = 4, bezier = "havenEase", style = "popin 94%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.4, bezier = "havenFade", style = "popin 96%" })

-- Layout changes feel physical instead of snapping.
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4, bezier = "havenEase" })

-- Quiet focus transitions.
hl.animation({ leaf = "fadeSwitch", enabled = true, speed = 2.5, bezier = "havenFade" })
hl.animation({ leaf = "fadeDim", enabled = true, speed = 2.5, bezier = "havenFade" })

hl.animation({ leaf = "border", enabled = true, speed = 5, bezier = "havenEase" })
hl.animation({ leaf = "fade", enabled = true, speed = 3, bezier = "havenFade" })

hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "havenEase", style = "slidefade" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 3, bezier = "havenEase", style = "slidevert" })

-- Overlay / layer-shell surfaces.
-- Quickshell, menus and OSDs should appear as part of the same visual language.
hl.animation({ leaf = "layersIn", enabled = true, speed = 3, bezier = "havenEase", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2.4, bezier = "havenFade", style = "fade" })

-- Subtle gradient response when focus changes.
hl.animation({ leaf = "borderangle", enabled = true, speed = 5, bezier = "havenEase" })

-- Media-heavy apps stay fully opaque, but they may dim like everything else.
hl.window_rule({
opacity = "1.0 override",
match = {
class = "^(vesktop|Vesktop)$",
},
})
hl.window_rule({
opacity = "1.0 override",
match = {
class = "^(code|VSCode|VSCodium)$",
},
})
hl.window_rule({
opacity = "1.0 override",
match = {
class = "^(chromium|Chromium|google-chrome|Brave|brave-browser)$",
},
})
