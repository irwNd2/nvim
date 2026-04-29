local map = vim.keymap.set

map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })

map("n", "<esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })

map("n", "<leader>sv", "<cmd>vsplit<cr>", { desc = "Vertical split" })
map("n", "<leader>sh", "<cmd>split<cr>", { desc = "Horizontal split" })

map("n", "<c-h>", "<c-w>h", { desc = "Move left window" })
map("n", "<c-j>", "<c-w>j", { desc = "Move down window" })
map("n", "<c-k>", "<c-w>k", { desc = "Move up window" })
map("n", "<c-l>", "<c-w>l", { desc = "Move right window" })

map("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>FzfLua live_grep<cr>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>FzfLua buffers<cr>", { desc = "Find buffers" })
map("n", "<leader>fh", "<cmd>FzfLua help_tags<cr>", { desc = "Help tags" })

map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "gr", vim.lsp.buf.references, { desc = "References" })
map("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
map("n", "<leader>d", vim.diagnostic.open_float, { desc = "Line diagnostic" })
map("n", "[d", function() vim.diagnostic.jump({ count = -1 }) end, { desc = "Previous diagnostic" })
map("n", "]d", function() vim.diagnostic.jump({ count = 1 }) end, { desc = "Next diagnostic" })
map("n", "<leader>e", "<cmd>Ex<cr>", { desc = "File explorer" })
map("n", "<leader>ve", "<cmd>Vex<cr>", { desc = "Vertical file explorer" })
