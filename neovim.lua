return {
	{
		"bjarneo/aether.nvim",
		branch = "v2",
		name = "aether",
		priority = 1000,
		opts = {
			transparent = false,
			colors = {
				-- Background colors
				bg = "#dedbc8",
				bg_dark = "#dedbc8",
				bg_highlight = "#5695a1",

				-- Foreground colors
				-- fg: Object properties, builtin types, builtin variables, member access, default text
				fg = "#0c0c14",
				-- fg_dark: Inactive elements, statusline, secondary text
				fg_dark = "#444479",
				-- comment: Line highlight, gutter elements, disabled states
				comment = "#8b4b3e",

				-- Accent colors
				-- red: Errors, diagnostics, tags, deletions, breakpoints
				red = "#a51d2d",
				-- orange: Constants, numbers, current line number, git modifications
				orange = "#b63e34",
				-- yellow: Types, classes, constructors, warnings, numbers, booleans
				yellow = "#2E311A",
				-- green: Comments, strings, success states, git additions
				green = "#005c32",
				-- cyan: Parameters, regex, preprocessor, hints, properties
				cyan = "#3B3B3B",
				-- blue: Functions, keywords, directories, links, info diagnostics
				blue = "#91760d",
				-- purple: Storage keywords, special keywords, identifiers, namespaces
				purple = "#3B3B3B",
				-- magenta: Function declarations, exception handling, tags
				magenta = "#7a5e1e",
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