return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "nvim-treesitter/nvim-treesitter-context",
      "windwp/nvim-ts-autotag",  -- Auto close HTML/Vue/TSX tags
    },
    opts = {
      ensure_installed = {
        "lua",
        "vim",
        "bash",
        "python",
        "json",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "vue",
        "query",
        "go",
        "c",
      },
      highlight = { enable = true },
      indent = { enable = true },
      textobjects = {
        select = {
          enable = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
          },
        },
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = { ["]f"] = "@function.outer" },
          goto_previous_start = { ["[f"] = "@function.outer" },
        },
      },
      context = { enable = true },
    },
    config = function(_, opts)
      -- Setup Treesitter
      require("nvim-treesitter.configs").setup(opts)

      -- Setup autotag langsung untuk menghilangkan warning
      require("nvim-ts-autotag").setup()
    end,
  },
}

