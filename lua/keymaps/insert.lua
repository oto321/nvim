local map = vim.keymap.set

-- Go back to normal mode with jj
map("i", "jj", "<Esc>", { desc = "Exit to normal mode", silent = true })

-- Unindent current line
map("i", "<S-Tab>", "<C-d>", { desc = "Unindent line", silent = true })

-- Move between splits in insert mode
map("i", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "Move to left split", silent = true })
map("i", "<C-j>", "<C-\\><C-n><C-w>j", { desc = "Move to split below", silent = true })
map("i", "<C-k>", "<C-\\><C-n><C-w>k", { desc = "Move to split above", silent = true })
map("i", "<C-l>", "<C-\\><C-n><C-w>l", { desc = "Move to right split", silent = true })
