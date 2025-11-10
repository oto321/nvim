local map = vim.keymap.set

-- ; enters command line
map("v", ";", ":", { desc = "Enter command line" })

-- Move selected lines up and down with J and K
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down", silent = true })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up", silent = true })

-- Move indentation with H and L
map("v", "H", "<gv", { desc = "Decrease indentation" })
map("v", "L", ">gv", { desc = "Increase indentation" })
