return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        spec = {
            { "<leader>f", group = "Picker" },
            { "<leader>b", group = "Buffer management" },
            { "<leader>g", group = "Git" },
            { "<leader>r", group = "Tools" },
            { "<leader>s", group = "Split management" },
            { "<leader>t", group = "Terminals management" },
            { "<leader>h", group = "Harpoon" },
        }
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
    },
}
