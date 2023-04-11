-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

local function augroup(name)
	return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

require("lspconfig.ui.windows").default_options.border = "rounded"

-- Git Blame Config
vim.g.gitblame_display_virtual_text = 0
vim.g.gitblame_message_template = "<author> <date>"
vim.g.gitblame_message_when_not_committed = ""
vim.g.gitblame_date_format = "%a %d %b %y"

-- Disable semantic tokens for LSP
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		client.server_capabilities.semanticTokensProvider = nil
	end,
})

-- Disable wrap and check for spell in text filetypes
vim.api.nvim_create_autocmd("FileType", {
	group = augroup("wrap_spell"),
	pattern = { "gitcommit", "markdown" },
	callback = function()
		vim.opt_local.wrap = false
		vim.opt_local.spell = false
	end,
})
