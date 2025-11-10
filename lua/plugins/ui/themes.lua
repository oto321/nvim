return {
    -- rose pine
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
        lazy = false,
    },

    -- catppuccin
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        lazy = false,
    },

    -- tokyo night
    {
        "folke/tokyonight.nvim",
        name = "tokyo-night",
        priority = 1000,
        lazy = false,
    },

    -- github
    {
        "projekt0n/github-nvim-theme",
        name = "github",
        priority = 1000,
        lazy = false,

    },

    -- lavi
    {
        "b0o/lavi.nvim",
        dependencies = { "rktjmp/lush.nvim" },
        config = function()
            vim.cmd("colorscheme lavi")
        end,
    },

}
