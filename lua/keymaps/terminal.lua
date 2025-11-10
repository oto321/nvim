local map = vim.keymap.set

-- Terminal toggle from normal mode
map("n", "<A-\\>", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })

-- Terminal toggle from terminal mode
map("t", "<C-\\>", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })

-- Disable snippet tab jump in select mode
map("s", "<Tab>", "<Tab>", { desc = "Insert Tab" })
