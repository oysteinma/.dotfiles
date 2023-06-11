vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0

vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0

local opt = vim.opt

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

opt.clipboard = "unnamedplus"
opt.fillchars:append("eob: ")
opt.completeopt = "menu,menuone,noselect"
opt.confirm = true
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true
opt.inccommand = "nosplit"
opt.laststatus = 0
opt.list = true
opt.scrolloff = 8
opt.colorcolumn = "80"
opt.updatetime = 50
opt.swapfile = false
opt.backup = false
opt.hlsearch = false
opt.incsearch = true
opt.mouse = "a"
opt.number = true
opt.pumblend = 0
opt.pumheight = 10
opt.cmdheight = 1
opt.relativenumber = true
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
opt.shiftround = true
opt.showmode = false
opt.sidescrolloff = 8
opt.signcolumn = "yes"
opt.smartcase = true
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 300
opt.undofile = true
opt.undolevels = 10000
opt.wildmode = ""
opt.winminwidth = 5
opt.wrap = false
opt.conceallevel = 0
opt.cursorline = false
