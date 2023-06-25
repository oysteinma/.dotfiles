return {
	{

		"williamboman/mason.nvim",
		cmd = "Mason",
		keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
		opts = {
			ui = {
				border = "rounded",
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
			ensure_installed = {
				"stylua",
				"shfmt",
        		"ruff",
				"black",
				"gopls",
				"rust-analyzer",
				"clangd",
				"pyright",
				"astro-language-server",
				"css-lsp",
				"html-lsp",
				"json-lsp",
				"tailwindcss-language-server",
				"svelte-language-server",
				"lua-language-server",
				"jdtls",
			},
		},
		---@param opts MasonSettings | {ensure_installed: string[]}
		config = function(_, opts)
			require("mason").setup(opts)
			local mr = require("mason-registry")
			local function ensure_installed()
				for _, tool in ipairs(opts.ensure_installed) do
					local p = mr.get_package(tool)
					if not p:is_installed() then
						p:install()
					end
				end
			end
			if mr.refresh then
				mr.refresh(ensure_installed)
			else
				ensure_installed()
			end
		end,
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = { "mason.nvim" },
		opts = function()
		local nls = require("null-ls")
		return {
			root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
			sources = {
			nls.builtins.formatting.stylua,
			nls.builtins.formatting.shfmt,
			nls.builtins.formatting.black,
			nls.builtins.diagnostics.ruff
			},
		}
		end,
  	}
}
