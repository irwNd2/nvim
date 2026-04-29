vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

-- Load manual dari opt/
vim.cmd("packadd nvim-treesitter")

-- Fix: tambahkan install dir ke runtimepath
local parser_install_dir = vim.fn.stdpath("data") .. "/site"
vim.opt.runtimepath:append(parser_install_dir)

local ok, treesitter = pcall(require, "nvim-treesitter.config")
if not ok then
	vim.notify("nvim-treesitter belum terinstall / belum ke-load", vim.log.levels.WARN)
	return
end

treesitter.setup({
	parser_install_dir = parser_install_dir,
	ensure_installed = {
		"lua",
		"vim",
		"vimdoc",
		"javascript",
		"typescript",
		"tsx",
		"vue",
		"html",
		"css",
		"json",
		"jsonc",
		"markdown",
		"markdown_inline",
		"go",
		"gomod",
		"gowork",
		"gosum",
	},
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
})
