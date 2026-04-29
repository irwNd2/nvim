vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
})

local capabilities = vim.lsp.protocol.make_client_capabilities()

local ok, blink = pcall(require, "blink.cmp")
if ok then
	capabilities = blink.get_lsp_capabilities(capabilities)
end

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

vim.lsp.config("lua_ls", {
	capabilities = capabilities,
	root_markers = {
		".luarc.json",
		".luarc.jsonc",
		".git",
		"init.lua",
	},
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
})

vim.lsp.config("ts_ls", {
	capabilities = capabilities,
	filetypes = {
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		"vue",
	},
})

vim.lsp.config("vue_ls", {
	capabilities = capabilities,
})

vim.lsp.config("tailwindcss", {
	capabilities = capabilities,
})

vim.lsp.config("eslint", {
	capabilities = capabilities,
})

vim.lsp.config("gopls", {
	capabilities = capabilities,
	settings = {
		gopls = {
			gofumpt = true,
			staticcheck = true,
			analyses = {
				unusedparams = true,
				shadow = true,
			},
		},
	},
})

vim.lsp.enable({
	"lua_ls",
	"ts_ls",
	"vue_ls",
	"tailwindcss",
	"eslint",
	"gopls",
})
