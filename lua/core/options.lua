vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.netrw_liststyle = 3
vim.g.netrw_winsize = 25
vim.cmd("colorscheme lunaperche")

local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

opt.wrap = false
opt.linebreak = true

opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
opt.signcolumn = "yes"

opt.clipboard = "unnamedplus"
opt.undofile = true

opt.splitright = true
opt.splitbelow = true

opt.scrolloff = 8
opt.sidescrolloff = 8

opt.updatetime = 250
opt.timeoutlen = 400

opt.completeopt = { "menu", "menuone", "noselect" }

opt.swapfile = false
opt.backup = false
opt.writebackup = false
