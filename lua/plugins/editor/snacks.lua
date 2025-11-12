return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        explorer = {
            enabled = true,
            layout = {
                cycle = true
            },
            on_select = function()
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
        notifier = {
            enabled = true,
            timeout = 2000,
            width = {
                min = 40,
                max = 0.4,
            },
            height = {
                min = 1,
                max = 0.6
            },
            margin = {
                top = 0,
                right = 1,
                bottom = 0,
            },
            style = "compact",
            top_down = true,
        },
        lazygit = {
            enabled = true,
        },
        image = {
            enabled = false,
        },
        indent = {
            enabled = true,
        },
    },
    keys = {
        -- keymaps for explorer and picker
        { "<leader>e",  function() Snacks.explorer() end,            desc = "Open snacks file explorer" },
        { "<leader>pf", function() Snacks.picker.smart() end,        desc = "Smart find files" },
        { "<leader>pb", function() Snacks.picker.buffers() end,      desc = "Buffers" },
        { "<leader>ps", function() Snacks.picker.grep() end,         desc = "Grep" },

        -- keymaps for git
        { "<leader>gg", function() Snacks.lazygit.open() end,        desc = "Open LazyGit" },
        { "<leader>gb", function() Snacks.picker.git_branches() end, desc = "Git Branches" },
        { "<leader>gl", function() Snacks.picker.git_log() end,      desc = "Git Log" },
        { "<leader>gL", function() Snacks.picker.git_log_line() end, desc = "Git Log Line" },
        { "<leader>gs", function() Snacks.picker.git_status() end,   desc = "Git Status" },
        { "<leader>gS", function() Snacks.picker.git_stash() end,    desc = "Git Stash" },
        { "<leader>gd", function() Snacks.picker.git_diff() end,     desc = "Git Diff (Hunks)" },
        { "<leader>gf", function() Snacks.picker.git_log_file() end, desc = "Git Log File" },
        -- { "<leader>gg", function() Snacks.picker.git_log_file() end, desc = "Git Log File" },

        -- notifier history
        { "<leader>hh", function() Snacks.notifier.show_history() end, desc = "Notification history"},

        -- todo
        {
            "<leader>pt",
            function()
                require("snacks").picker.grep({ search = "TODO:" })
            end,
            desc = "Search TODO comments",
        },
        {
            "<leader>pT",
            function()
                require("snacks").picker.grep({ search = "(TODO|FIX|FIXME):" })
            end,
            desc = "Search TODO/FIX/FIXME comments",
        },
    },
}
