return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        explorer = {
            enabled = false,
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
            char = "│", -- Match the thin line from your statuscol
            blank = " ", -- Keep blanks empty for a minimal look
            only_scope = false, -- Set to true if you ONLY want the current block highlighted
            only_current = false,
            animate = {
                enabled = true, -- Keeps the nice animation you like
                style = "out",
                duration = { step = 20, total = 500 },
            },
            -- This is the key for "cleanliness"
            scope = {
                enabled = true, -- Highlights the vertical line of the block you're in
                char = "│",
                underline = false, -- Don't underline the top/bottom (cleaner)
            },
        },
        zen = {
            enabled = false,
        },
    },
    keys = {
        -- keymaps for explorer and picker
        -- { "<leader>e",  function() Snacks.explorer() end,            desc = "Open snacks file explorer" },
        { "<leader>ff", function() Snacks.picker.smart() end,          desc = "Smart find files" },
        { "<leader>fb", function() Snacks.picker.buffers() end,        desc = "Buffers" },
        { "<leader>fs", function() Snacks.picker.grep() end,           desc = "Grep" },

        -- keymaps for git
        { "<leader>gg", function() Snacks.lazygit.open() end,          desc = "Open LazyGit" },
        { "<leader>gb", function() Snacks.picker.git_branches() end,   desc = "Git Branches" },
        { "<leader>gl", function() Snacks.picker.git_log() end,        desc = "Git Log" },
        { "<leader>gL", function() Snacks.picker.git_log_line() end,   desc = "Git Log Line" },
        { "<leader>gs", function() Snacks.picker.git_status() end,     desc = "Git Status" },
        { "<leader>gS", function() Snacks.picker.git_stash() end,      desc = "Git Stash" },
        { "<leader>gd", function() Snacks.picker.git_diff() end,       desc = "Git Diff (Hunks)" },
        { "<leader>gf", function() Snacks.picker.git_log_file() end,   desc = "Git Log File" },
        -- { "<leader>gg", function() Snacks.picker.git_log_file() end, desc = "Git Log File" },

        -- notifier history
        { "<leader>hh", function() Snacks.notifier.show_history() end, desc = "Notification history" },



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
}
