vim.pack.add({
	{ src = "https://github.com/stevearc/conform.nvim" },
})

require("conform").setup({
	formatters_by_ft = {
		javascript = { "prettier" },
		javascriptreact = { "prettier" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
		vue = { "prettier" },
		css = { "prettier" },
		scss = { "prettier" },
		html = { "prettier" },
		json = { "prettier" },
		jsonc = { "prettier" },
		markdown = { "prettier" },

		lua = { "stylua" },

		go = { "goimports", "gofmt" },
	},

	format_on_save = {
		timeout_ms = 1000,
		lsp_format = "never",
	},
})

vim.keymap.set("n", "<leader>f", function()
	require("conform").format({
		async = true,
		lsp_format = "fallback",
	})
end, { desc = "Format file" })
