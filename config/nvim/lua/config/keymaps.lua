-- Netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open netrw" })

-- Move lines when in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor at the same place when pasting stuff on same lines
vim.keymap.set("n", "J", "mzJ`z")

-- Centering cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Centering search term
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Highlight and replace word without copying the replace word
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Never press capital Q
vim.keymap.set("n", "Q", "<nop>")

-- Replace the word the cursor is on
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace word" })

-- Lazy
vim.keymap.set("n", "<leader>la", "<cmd>:Lazy<cr>", { desc = "Lazy" })

-- Toggle format on save
vim.keymap.set("n", "<leader>uf", require("lazyvim.plugins.lsp.format").toggle, { desc = "Toggle format on Save" })

-- Fugitive
vim.keymap.set("n", "<leader>gs", "<cmd>:top Git<cr>", { desc = "Git status" })
vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>")
vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>")

-- Undotree
vim.keymap.set("n", "<leader>U", "<cmd>UndotreeToggle<cr>", { desc = "Undotree" })

-- Harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Add file to harpoon" })
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Toggle harpoon menu" })

vim.keymap.set("n", "<leader>h", function()
	ui.nav_file(1)
end, { desc = "Navigate to file 1" })
vim.keymap.set("n", "<leader>j", function()
	ui.nav_file(2)
end, { desc = "Navigate to file 2" })
vim.keymap.set("n", "<leader>k", function()
	ui.nav_file(3)
end, { desc = "Navigate to file 3" })
vim.keymap.set("n", "<leader>l", function()
	ui.nav_file(4)
end, { desc = "Navigate to file 4" })
