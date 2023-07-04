return {
	{
		"tpope/vim-fugitive",
	},
	{
		"tpope/vim-surround",
	},
	{
		"ThePrimeagen/harpoon",
	},
	{
		"mbbill/undotree",
	},
	{
		"rbong/vim-flog",
	},
	{
		"christoomey/vim-tmux-navigator",
	},
	{
		"goolord/alpha-nvim",
		opts = function(_, opts)
			opts.section.buttons.val = {}
		end,
	},
	{
		"stevearc/oil.nvim",
		opts = {
			use_default_keymaps = false,
			keymaps = {
				["g?"] = "actions.show_help",
				["<CR>"] = "actions.select",
				["<C-v>"] = "actions.select_vsplit",
				["<C-i>"] = "actions.select_split",
				["<C-t>"] = "actions.select_tab",
				["<C-p>"] = "actions.preview",
				["<C-c>"] = "actions.close",
				["<C-u>"] = "actions.refresh",
				["-"] = "actions.parent",
				["_"] = "actions.open_cwd",
				["`"] = "actions.cd",
				["~"] = "actions.tcd",
				["g."] = "actions.toggle_hidden",
			},
			view_options = {
				show_hidden = true,
				is_always_hidden = function(name)
					return vim.startswith(name, ".DS") or vim.startswith(name, "thumbs.db")
				end,
			},
		},
	},
	{
		"folke/which-key.nvim",
		opts = {
			window = {
				border = "single",
				position = "bottom",
				margin = { 1, 0, 1, 0 },
				padding = { 1, 2, 1, 2 },
				winblend = 0,
			},
			show_help = false,
		},
	},
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				suggestion = {
					auto_trigger = true,
					keymap = {
						accept = "<S-TAB>",
						accept_word = false,
						accept_line = false,
						dismiss = "<C-]>",
					},
				},
			})
		end,
	},
	{
		"ethanholz/nvim-lastplace",
		config = function()
			require("nvim-lastplace").setup({
				lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
				lastplace_ignore_filetype = { "gitcommit", "gitrebase", "svn", "hgcommit" },
				lastplace_open_folds = true,
			})
		end,
	},
	{
		"Aasim-A/scrollEOF.nvim",
		config = function()
			require("scrollEOF").setup()
		end,
	},
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
	{
		"L3MON4D3/LuaSnip",
		keys = function()
			return {}
		end,
	},
	{
		"neovim/nvim-lspconfig",
		---@class PluginLspOpts
		opts = function(_, opts)
			opts.autoformat = false
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
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
