return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#DEDBC8", -- Default background
                base01 = "#4d4f3a", -- Lighter background (status bars)
                base02 = "#E2E2DB", -- Selection background
                base03 = "#4d4f3a", -- Comments, invisibles
                base04 = "#064978", -- Dark foreground
                base05 = "#695815", -- Default foreground
                base06 = "#4b0304", -- Light foreground
                base07 = "#064978", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#a51d2d", -- Variables, errors, red
                base09 = "#e01b24", -- Integers, constants, orange
                base0A = "#91760d", -- Classes, types, yellow
                base0B = "#005c32", -- Strings, green
                base0C = "#519051", -- Support, regex, cyan
                base0D = "#444479", -- Functions, keywords, blue
                base0E = "#724072", -- Keywords, storage, magenta
                base0F = "#7a5e1e", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
