return {
  -- Install/manage LSP servers
  {
    "williamboman/mason.nvim",
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
  },

  -- LSP config
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
  },

  -- Autocomplete
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",   -- completion source dari LSP
      "hrsh7th/cmp-buffer",     -- kata dari buffer
      "hrsh7th/cmp-path",       -- path completion
      "L3MON4D3/LuaSnip",       -- snippet engine
      "saadparwaiz1/cmp_luasnip",
    },
  },
}
