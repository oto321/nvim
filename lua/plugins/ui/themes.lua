return {
    -- themery
    {
        "zaldih/themery.nvim",
        lazy = false,
        config = function()
            require("themery").setup({
                themes = {
                    -- rose-pine
                    { name = "rose-pine",            colorscheme = "rose-pine-main" },
                    { name = "rose-pine-moon",       colorscheme = "rose-pine-moon" },

                    -- catppuccin
                    { name = "catppuccin-frappe",    colorscheme = "catppuccin-frappe" },
                    { name = "catppuccin-macchiato", colorscheme = "catppuccin-macchiato" },
                    { name = "catppuccin-mocha",     colorscheme = "catppuccin-mocha" },

                    -- lavi
                    { name = "lavi",                 colorscheme = "lavi" },

                    -- nordic
                    { name = "nordic",               colorscheme = "nordic" },

                    -- night own
                    { name = "night-owl",            colorscheme = "night-owl" },

                    -- kangawa
                    { name = "kanagawa-dragon",      colorscheme = "kanagawa-dragon" },
                    { name = "kanagawa-wave",        colorscheme = "kanagawa-wave" },

                    -- gruvbox
                    { name = "gruvbox",              colorscheme = "gruvbox" },

                    -- bluloco
                    { name = "bluloco",              colorscheme = "bluloco-dark" },

                    -- yorumi
                    { name = "yorumi",               colorscheme = "yorumi-abyss" }

                },
                livePreview = true,
            })

            -- Keymap: <leader>c to open Themery
            vim.keymap.set("n", "<leader>c", "<cmd>Themery<CR>", { desc = "Open Themery theme picker" })
        end,
    },

    -- rose pine
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
        lazy = true,
    },

    -- catppuccin
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        lazy = true,
    },

    -- lavi
    {
        "b0o/lavi.nvim",
        name = "lavi",
        dependencies = { "rktjmp/lush.nvim" },
        config = function()
            vim.cmd("colorscheme lavi")
        end,
        lazy = true,
    },

    -- nordic
    {
        'AlexvZyl/nordic.nvim',
        name = "nordic",
        lazy = true,
        priority = 1000,
        config = function()
            require('nordic').load()
        end
    },

    -- night owl
    {
        "oxfist/night-owl.nvim",
        name = "night-owl",
        lazy = true,
        priority = 1000,
    },

    -- kangawa
    {
        "rebelot/kanagawa.nvim",
        lazy = true,
        priority = 1000,
    },

    -- gruv box
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = true,
        opts = {},
    },

    --bluloco
    {
        'uloco/bluloco.nvim',
        lazy = true,
        priority = 1000,
        dependencies = { 'rktjmp/lush.nvim' },
    },

    -- yorumi
    {
        "yorumicolors/yorumi.nvim",
        lazy = true,
        priority = 1000,
    },
}
