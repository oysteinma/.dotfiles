return {
	{
		"telescope.nvim",
		keys = {
			{ "<leader>gs", vim.NIL },
		},
		opts = {
			defaults = {
				mappings = {
					i = {
						["<esc>"] = require("telescope.actions").close,
					},
				},
			},
		},
	},
}
