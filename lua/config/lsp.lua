local util = require("lspconfig.util")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")
local function root_dir(fname)
  return util.root_pattern(
    "package.json",
    "tsconfig.json",
    "jsconfig.json",
    ".git"
  )(fname) or vim.fn.getcwd()
end

-- Vue (Volar)
lspconfig.volar.setup({
  capabilities = capabilities,
  root_dir = root_dir,
  init_options = {
    typescript = {
      tsdk = "/home/irwnd2/.nvm/versions/node/v24.11.1/lib/node_modules/typescript/lib"
    }
  },
  settings = {
    typescript = {
      inlayHints = {
        includeInlayVariableTypeHints = true,
      },
    },
  }
})

-- TS/JS (vtsls)
lspconfig.vtsls.setup({
  capabilities = capabilities,
  root_dir = root_dir,
  filetypes = {
    "javascript", "javascriptreact", "javascript.jsx",
    "typescript", "typescriptreact", "typescript.tsx",
  },
})

lspconfig.eslint.setup({
  root_dir = root_dir,
  settings = {
    workingDirectories = { mode = "auto" },
  },
})

-- Go
vim.lsp.config("gopls", {
  capabilities = capabilities,
})
vim.lsp.enable("gopls")

-- JSON
vim.lsp.config("jsonls", {
  capabilities = capabilities,
})
vim.lsp.enable("jsonls")
