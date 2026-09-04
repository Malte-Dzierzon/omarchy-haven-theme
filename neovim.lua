return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      transparent = false,
      colors = {
        bg         = "#070e15",
        dark_bg    = "#050b10",
        darker_bg  = "#04070b",
        lighter_bg = "#20262c",

        fg         = "#e9efeb",
        dark_fg    = "#9aa7a1",
        light_fg   = "#eff3ef",
        bright_fg  = "#f3f7f3",
        muted      = "#62676c",

        red        = "#857960",
        yellow     = "#96937b",
        orange     = "#978d78",
        green      = "#82967f",
        cyan       = "#83a2a3",
        blue       = "#97a6bb",
        purple     = "#6c7b91",
        brown      = "#5b5548",

        bright_red    = "#bfae87",
        bright_yellow = "#bbb999",
        bright_green  = "#a4b89b",
        bright_cyan   = "#a5c9ca",
        bright_blue   = "#bbcce7",
        bright_purple = "#8e9fbb",

        accent               = "#97a6bb",
        cursor               = "#e9efeb",
        foreground           = "#e9efeb",
        background           = "#070e15",
        selection             = "#20262c",
        selection_foreground = "#e9efeb",
        selection_background = "#20262c",
      },
      on_highlights = function(hl, c)
        hl.CursorLine = { bg = c.lighter_bg }
        hl.CursorLineNr = { fg = c.bright_red, bold = true }
        hl.LspReferenceText = { bg = c.selection, fg = c.bright_fg }
        hl.LspReferenceRead = hl.LspReferenceText
        hl.LspReferenceWrite = hl.LspReferenceText
        hl.SnacksPickerDir = { fg = c.muted }
        hl.SnacksPickerPathHidden = { fg = c.muted }
        hl.SnacksPickerPathIgnored = { fg = c.muted }
        hl.SnacksPickerListCursorLine = { bg = c.lighter_bg }
      end,
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
