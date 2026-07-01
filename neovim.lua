return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg = "#dedbc8",
        dark_bg = "#dedbc8",
        darker_bg = "#d5d2bf",   -- slightly darker for statusline, etc.
        lighter_bg = "#e9e6d3",  -- cursorline / subtle raised bg

        fg = "#0c0c14",
        dark_fg = "#2b2721",
        light_fg = "#5d5541",
        bright_fg = "#605844",
        muted = "#5a5340",

        -- === Whitegold syntax colors, darkened for the light bg ===
        -- Every foreground below is >= 4.6:1 on #dedbc8 (AA + margin).
        red = "#4b0304",          -- errors, vars, deletions
        orange = "#6c5319",       -- numbers, constants, git mods (bronze)
        yellow = "#725c0a",       -- types, classes, constructors (gold)
        green = "#005c32",        -- strings, additions
        cyan = "#3b3b3b",         -- parameters, regex, properties (grey)
        blue = "#2e311a",         -- functions, keywords, links (dark olive)
        purple = "#762b2f",       -- storage / special keywords
        brown = "#6c5319",        -- deprecated (bronze)

        bright_red = "#4b0304",
        bright_yellow = "#725c0a",
        bright_green = "#005c32",
        bright_cyan = "#3b3b3b",
        bright_blue = "#2e311a",
        bright_purple = "#762b2f",

        accent = "#005c32",
        cursor = "#0c0c14",
        foreground = "#0c0c14",
        background = "#dedbc8",
        selection = "#c4c1ac",             -- soft selection bg
        selection_foreground = "#0c0c14",
        selection_background = "#c4c1ac",
      },
      on_highlights = function(hl, c)
        hl.CursorLine = { bg = "#e9e6d3" }
        hl.CursorLineNr = { fg = c.orange, bold = true }
        -- clean, solid selection + word-occurrence highlights (no muddy computed bg)
        hl.Visual = { bg = "#c4c1ac" }
        hl.LspReferenceText  = { bg = "#d0ccb4" }
        hl.LspReferenceRead  = { bg = "#d0ccb4" }
        hl.LspReferenceWrite = { bg = "#d0ccb4" }
        hl.IlluminatedWordText  = { bg = "#d0ccb4" }
        hl.IlluminatedWordRead  = { bg = "#d0ccb4" }
        hl.IlluminatedWordWrite = { bg = "#d0ccb4" }
        hl.MatchParen = { bg = "#c4c1ac", bold = true }
        -- keywords: aether renders these lilac internally -> force to palette.
        -- general keywords -> olive; exceptions (try/except/raise/finally) -> wine accent
        local kw_olive = { fg = "#2e311a" }
        for _, g in ipairs({
          "Keyword", "Conditional", "Repeat", "Statement", "Include", "StorageClass",
          "@keyword", "@keyword.function", "@keyword.operator", "@keyword.return",
          "@keyword.conditional", "@keyword.repeat", "@keyword.import",
          "@keyword.coroutine", "@conditional", "@repeat", "@include",
        }) do
          hl[g] = kw_olive
        end
        local kw_wine = { fg = "#762b2f" }
        for _, g in ipairs({ "Exception", "@keyword.exception", "@exception" }) do
          hl[g] = kw_wine
        end
        -- brackets/parens/braces: lift from aether's muted tone to a saturated, visible gold
        hl["@punctuation.bracket"] = { fg = "#725c0a" }
        hl["@punctuation.special"] = { fg = "#725c0a" }
      end,
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      require("aether.hotreload").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "aether" },
  },
}
