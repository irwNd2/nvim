return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "windwp/nvim-ts-autotag",
      "nvim-treesitter/nvim-treesitter-context",
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
      },

      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true },

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
  },
}

