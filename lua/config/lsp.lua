local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("gopls", { capabilities = capabilities })
vim.lsp.config("jsonls", { capabilities = capabilities })

-- TS/JS (pakai vtsls)
vim.lsp.config("vtsls", { capabilities = capabilities })

-- Vue
vim.lsp.config("vue_ls", { capabilities = capabilities })

vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    vim.lsp.enable({ "gopls", "jsonls", "vtsls", "vue_ls" })
  end,
})
