return {
	{
		"bjarneo/aether.nvim",
		name = "aether",
		priority = 1000,
		opts = {
			disable_italics = false,
			colors = {
				base00 = "#dedbc8", -- Default background
				base01 = "#8b4b3e", -- Lighter background (status bars)
				base02 = "#dedbc8", -- Selection background
				base03 = "#8b4b3e", -- Comments, invisibles
				base04 = "#444479", -- Dark foreground
				base05 = "#2c2c2c", -- Default foreground
				base06 = "#4b0304", -- Light foreground
				base07 = "#444479", -- Light background

				-- Accent colors (base08-base0F)
				base08 = "#a51d2d", -- Variables, errors, red
				base09 = "#e01b24", -- Integers, constants, orange
				base0A = "#005c32", -- Classes, types, yellow
				base0B = "#2c2c2c", -- Strings, green
				base0C = "#06498a", -- Support, regex, cyan
				base0D = "#695815", -- Functions, keywords, blue
				base0E = "#3d3a2c", -- Keywords, storage, magenta
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
