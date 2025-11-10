return {
    -- rose pine
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
        lazy = false,
        config = function()
            vim.cmd("colorscheme rose-pine")
        end,
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

    -- cyber dream
    {
        "scottmckendry/cyberdream.nvim",
        name = "cyber-dream",
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
}
