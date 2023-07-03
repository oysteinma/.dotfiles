return {
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "nightfox",
		},
	},
	{
		"EdenEast/nightfox.nvim",
		config = function()
			require("nightfox").setup({
				options = {
					compile_path = vim.fn.stdpath("cache") .. "/nightfox",
					compile_file_suffix = "_compiled",
					transparent = true,
					terminal_colors = true,
					dim_inactive = false,
					module_default = true,
					colorblind = {
						enable = false,
						simulate_only = false,
						severity = {
							protan = 0,
							deutan = 0,
							tritan = 0,
						},
					},
					styles = {
						comments = "NONE",
						conditionals = "NONE",
						constants = "NONE",
						functions = "NONE",
						keywords = "NONE",
						numbers = "NONE",
						operators = "NONE",
						strings = "NONE",
						types = "NONE",
						variables = "NONE",
					},
					inverse = {
						match_paren = false,
						visual = false,
						search = false,
					},
				},
				palettes = {},
				specs = {},
				groups = {
					all = {
						NormalFloat = { bg = "NONE", fg = "NONE" },
						WhichKeyFloat = { bg = "NONE", fg = "NONE" },
						VertSplit = { bg = "NONE", fg = "#28394F" },
					},
				},
			})
		end,
	},
}
