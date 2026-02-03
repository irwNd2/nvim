require("config.lazy")
require("config.lsp")
require("config.cmp")
vim.opt.termguicolors = true
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.lsp.inline_completion.enable(false)
