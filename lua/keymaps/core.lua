local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- make ; to go command line
map("n", ";", ":", { desc = "Enter Command mode" })

-- Cycle through buffers
map("n", "<Tab>", ":bnext<CR>", { desc = "Cycle to next buffer", silent = true })
map("n", "<S-Tab>", ":bprevious<CR>", { desc = "Cycle to previous buffer", silent = true })
map("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Close buffer", silent = true })

-- Clear search result
map("n", "<C-c>", ":nohl<CR>", { desc = "Clear search result", silent = true })

-- Splits
-- Create splits
map("n", "<leader>sv", "<C-w>v", { desc = "Create vertical split", silent = true })
map("n", "<leader>sh", "<C-w>s", { desc = "Create horizontal split", silent = true })
map("n", "<leader>se", "<C-w>=", { desc = "Equalize splits", silent = true })
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current window", silent = true })

-- Move between splits
map("n", "<C-h>", "<C-w>h", { desc = "Move to the Left split", silent = true })
map("n", "<C-j>", "<C-w>j", { desc = "Move to the split Below", silent = true })
map("n", "<C-k>", "<C-w>k", { desc = "Move to the split Above", silent = true })
map("n", "<C-l>", "<C-w>l", { desc = "Move to the Right split", silent = true })

-- Resize splits
map("n", "<A-H>", ":vertical resize -2<CR>", { desc = "Decrease width", silent = true })
map("n", "<A-J>", ":resize -2<CR>", { desc = "Decrease height", silent = true })
map("n", "<A-K>", ":resize +2<CR>", { desc = "Increase height", silent = true })
map("n", "<A-L>", ":vertical resize +2<CR>", { desc = "Increase width", silent = true })

-- Map Up/Down arrows to Ctrl-U/D (half-page scroll)
map("n", "<Up>", "<C-u>", { desc = "Scroll half-page up", silent = true })
map("n", "<Down>", "<C-d>", { desc = "Scroll half-page down", silent = true })
