return {
	{
		"nvim-treesitter/nvim-treesitter",
		"nvim-treesitter/nvim-treesitter-context",
		opts = {
			highlight = { enable = true },
			indent = { enable = true, disable = { "python" } },
			context_commentstring = { enable = true, enable_autocmd = false },
			ensure_installed = "all",
		},
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
	},
}
