local function augroup(name)
    return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

require("lspconfig.ui.windows").default_options.border = "rounded"

-- Increase time of whichkey menu
vim.o.timeout = true
vim.o.timeoutlen = 1500

-- Git Blame Config
vim.g.gitblame_display_virtual_text = 0
vim.g.gitblame_message_template = "<author> <date>"
vim.g.gitblame_message_when_not_committed = ""
vim.g.gitblame_date_format = "%a %d %b %y"

-- Rounded borders for line diagnostics
vim.diagnostic.config({
    float = { border = "rounded" },
})

-- Disable semantic tokens for LSP
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        client.server_capabilities.semanticTokensProvider = nil
    end,
})

-- Remove annoying new comment line when pressing o or O in normal mode
vim.cmd("au BufWinEnter * set formatoptions-=o")

-- Fugitive
vim.api.nvim_create_autocmd("BufWinEnter", {
    group = augroup("fugitive"),
    pattern = "*",
    callback = function()
        if vim.bo.ft ~= "fugitive" then
            return
        end

        local bufnr = vim.api.nvim_get_current_buf()
        local opts = { buffer = bufnr, remap = false }
        vim.keymap.set("n", "<leader>p", function()
            vim.cmd.Git("push")
        end, opts)

        -- Rebase always
        vim.keymap.set("n", "<leader>P", function()
            vim.cmd.Git("pull --rebase")
        end, opts)
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
