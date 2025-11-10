return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            explorer = {
                enabled = true,
                layout = {
                    cycle = true
                },
                on_select = function ()
                    require("snacks").explorer.close()
                end,
            },
            picker = {
                enabled = true,
                ui_select = true,
                matcher = {
                    fuzzy = true,
                    smartcase = true,
                    ignorecase = true,
                    filename_bonus = true,
                },
            },
            image = {
                enable = true,
            },
            indent = {
                enabled = true,
            },
        },
        keys = {
            -- keymaps for explorer and picker
            { "<leader>e",  function() Snacks.explorer() end,            desc = "Open snacks file explorer" },
            { "<leader>ff", function() Snacks.picker.smart() end,        desc = "Smart fine files" },
            { "<leader>fb", function() Snacks.picker.buffers() end,      desc = "Buffers" },
            { "<leader>fs", function() Snacks.picker.grep() end,         desc = "Grep" },

            -- keymaps for git
            { "<leader>gb", function() Snacks.picker.git_branches() end, desc = "Git Branches" },
            { "<leader>gl", function() Snacks.picker.git_log() end,      desc = "Git Log" },
            { "<leader>gL", function() Snacks.picker.git_log_line() end, desc = "Git Log Line" },
            { "<leader>gs", function() Snacks.picker.git_status() end,   desc = "Git Status" },
            { "<leader>gS", function() Snacks.picker.git_stash() end,    desc = "Git Stash" },
            { "<leader>gd", function() Snacks.picker.git_diff() end,     desc = "Git Diff (Hunks)" },
            { "<leader>gf", function() Snacks.picker.git_log_file() end, desc = "Git Log File" },

            -- color schemes
            { "<leader>fc", function() Snacks.picker.colorschemes() end, desc = "Colorschemes" },
        },
    },
    {
        "folke/snacks.nvim",
        keys = {
            {
                "<leader>ft",
                function()
                    require("snacks").picker.grep({ search = "TODO:" })
                end,
                desc = "Search TODO comments",
            },
            {
                "<leader>fT",
                function()
                    require("snacks").picker.grep({ search = "(TODO|FIX|FIXME):" })
                end,
                desc = "Search TODO/FIX/FIXME comments",
            },
        },
    },

}
