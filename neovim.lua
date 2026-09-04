return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg         = "#070e15",
        dark_bg    = "#050b10",
        darker_bg  = "#04070b",
        lighter_bg = "#20262c",

        fg         = "#b1d2d2",
        dark_fg    = "#859e9e",
        light_fg   = "#bdd9d9",
        bright_fg  = "#c5dddd",
        muted      = "#62676c",

        red        = "#857960",
        yellow     = "#96937b",
        orange     = "#978d78",
        green      = "#70806c",
        cyan       = "#83a2a3",
        blue       = "#97a6bb",
        purple     = "#6c7b91",
        brown      = "#5b5548",

        bright_red    = "#aa9e7c",
        bright_yellow = "#bbb999",
        bright_green  = "#92a58b",
        bright_cyan   = "#a5c9ca",
        bright_blue   = "#bbcce7",
        bright_purple = "#8e9fbb",

        accent               = "#97a6bb",
        cursor               = "#b1d2d2",
        foreground           = "#b1d2d2",
        background           = "#070e15",
        selection             = "#20262c",
        selection_foreground = "#b1d2d2",
        selection_background = "#20262c",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
