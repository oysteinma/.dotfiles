return {
	{
		"projekt0n/github-nvim-theme",
		branch = "0.0.x",
		lazy = false,
		priority = 1000,
		config = function()
			require("github-theme").setup({
				transparent = true,
				hide_end_of_buffer = true,
				keyword_style = "NONE",
				variable_style = "NONE",
				function_style = "NONE",
				comment_style = "NONE",
				overrides = function()
					return {
						NormalFloat = { bg = "NONE" },
						WhichKeyFloat = { bg = "NONE" },
					}
				end,
			})
		end,
	},
}
