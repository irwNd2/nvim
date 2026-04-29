vim.pack.add({
  { src = "https://github.com/ibhagwan/fzf-lua" },
})

require("fzf-lua").setup({
  winopts = {
    height = 0.85,
    width = 0.85,
    row = 0.5,
    col = 0.5,
    preview = {
      default = "bat",
    },
  },
})
