local orig = vim.deprecate
vim.deprecate = function(name, alt, version, plugin, backtrace)
  if name:match("lspconfig") then
    return
  end
  orig(name, alt, version, plugin, backtrace)
end
require("config.lazy")
require("config.lsp")
require("config.cmp")
require("config.diagnostic")
vim.opt.termguicolors = true
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.lsp.inline_completion.enable(false)
