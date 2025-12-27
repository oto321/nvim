return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        spec = {
            { "<leader>f", group = "Picker" },
            { "<leader>b", group = "Buffer management" },
            { "<leader>g", group = "Git" },
            { "<leader>r", group = "Rename/Refactor" },
            { "<leader>s", group = "Split/Search" },
            { "<leader>t", group = "Terminals management" },
            { "<leader>h", group = "Harpoon/History" },
            { "<leader>c", group = "Code actions" },
            { "<leader>d", group = "Diagnostics" },
            { "<leader>q", group = "Quickfix" },
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
