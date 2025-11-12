return {
    -- themery
    {
        "zaldih/themery.nvim",
        lazy = false,
        config = function()
            require("themery").setup({
                themes = {
                    -- rose-pine
                    { name = "rose-pine",            colorscheme = "rose-pine" },
                    { name = "rose-pine-moon",       colorscheme = "rose-pine-moon" },

                    -- catppuccin
                    { name = "catppuccin-frappe",    colorscheme = "catppuccin-frappe" },
                    { name = "catppuccin-macchiato", colorscheme = "catppuccin-macchiato" },
                    { name = "catppuccin-mocha",     colorscheme = "catppuccin-mocha" },

                    -- tokyonight
                    { name = "tokyo-night-storm",    colorscheme = "tokyonight-storm" },
                    { name = "tokyo-night-night",    colorscheme = "tokyonight-night" },

                    -- lavi
                    { name = "lavi",                 colorscheme = "lavi" },

                    -- nordic
                    { name = "nordic",               colorscheme = "nordic" },

                    -- night own
                    { name = "night-owl",            colorscheme = "night-owl" },
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

    -- tokyo night
    {
        "folke/tokyonight.nvim",
        name = "tokyo-night",
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
}
