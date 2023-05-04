return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				eslint = {
					settings = {
						workingDirectory = { mode = "auto" },
					},
				},
				pylsp = {},
				astro = {},
				gopls = {},
				tailwindcss = {},
				html = {},
				cssls = {},
				sourcekit = {},
				rust_analyzer = {},
				kotlin_language_server = {},
				dartls = {},
				svelte = {},
				jdtls = {},
			},
			setup = {
				eslint = function()
					vim.api.nvim_create_autocmd("BufWritePre", {
						callback = function(event)
							if require("lspconfig.util").get_active_client_by_name(event.buf, "eslint") then
								vim.cmd("EslintFixAll")
							end
						end,
					})
				end,
			},
		},
	},
}
