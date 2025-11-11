-- side number bar
vim.opt.number = true
vim.opt.relativenumber = true

-- spacing and tabs and stuff
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.autoindent = true

-- persistient undo
vim.opt.undofile = true

-- clipboard
vim.opt.clipboard = "unnamedplus"

-- settings for search
vim.opt.incsearch = true
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- appearance and behaviour
vim.opt.termguicolors = true
vim.opt.scrolloff = 6
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.mouse = "a"
vim.opt.wrap = false

-- split defaults
vim.opt.splitright = true
vim.opt.splitbelow = true

-- hide command line
vim.opt.laststatus = 3
vim.opt.cmdheight = 0

-- change ghost text opacity
vim.api.nvim_set_hl(0, 'BlinkCmpGhostText', { fg = '#808080', blend = 90 })
