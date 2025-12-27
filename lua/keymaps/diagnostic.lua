local map = vim.keymap.set

map("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
map("n", "<leader>df", vim.diagnostic.open_float, { desc = "Show diagnostic float" })
map("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

map("n", "[q", ":cprev<CR>", { desc = "Previous quickfix item" })
map("n", "]q", ":cnext<CR>", { desc = "Next quickfix item" })
map("n", "<leader>qo", ":copen<CR>", { desc = "Open quickfix list" })
map("n", "<leader>qc", ":cclose<CR>", { desc = "Close quickfix list" })
