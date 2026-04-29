vim.pack.add({
	{ src = "https://github.com/Saghen/blink.lib" },
	{ src = "https://github.com/Saghen/blink.cmp" },
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
})

local ok, cmp = pcall(require, "blink.cmp")
if not ok then
	return
end

cmp.build():wait(60000)

cmp.setup({
	keymap = {
		preset = "default",
	},

	appearance = {
		use_nvim_cmp_as_default = true,
		nerd_font_variant = "mono",
	},

	signature = {
		enabled = true,
	},

	sources = {
		default = { "lsp", "path", "snippets" },
	},
})
