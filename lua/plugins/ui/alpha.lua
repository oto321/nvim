return {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {


            "███▄▄▄▄    ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄  ",
            "███▀▀▀██▄ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄",
            "███   ███ ███    ███ ███▌ ███   ███   ███",
            "███   ███ ███    ███ ███▌ ███   ███   ███",
            "███   ███ ███    ███ ███▌ ███   ███   ███",
            "███   ███ ███    ███ ███  ███   ███   ███",
            "███   ███ ███    ███ ███  ███   ███   ███",
            " ▀█   █▀   ▀██████▀  █▀    ▀█   ███   █▀ ",

        }

        local workspaces_buttons = {}
        local ok, workspaces = pcall(require, "workspaces")
        if ok then
            local recent = workspaces.get()
            for i = 1, math.min(3, #recent) do
                local ws = recent[i]
                local name = ws.name
                local icon = "  "
                table.insert(workspaces_buttons,
                    dashboard.button("w" .. i, icon .. name, function()
                        workspaces.open(name)
                    end)
                )
            end
        end

        dashboard.section.buttons.val = {
            dashboard.button("e", "  New File", ":ene <BAR> startinsert <CR>"),
            dashboard.button("f", "  Find file", function() Snacks.picker.smart() end),
            dashboard.button("s", " 󰑓 Restore Session", function() require("persistence").load() end),
            dashboard.button("g", " 󰮗 Grep word", function() Snacks.picker.grep() end),
            dashboard.button("r", "  Recent files", function() Snacks.picker.recent() end),
        }

        if #workspaces_buttons > 0 then
            for _, btn in ipairs(workspaces_buttons) do
                table.insert(dashboard.section.buttons.val, btn)
            end
        end

        table.insert(dashboard.section.buttons.val, dashboard.button("q", "  Quit", ":qa<CR>"))


        dashboard.config.layout = {
            { type = "padding", val = vim.fn.max({ 2, vim.fn.floor(vim.fn.winheight(0) * 0.1) }) },
            dashboard.section.header,
            { type = "padding", val = 4 },
            dashboard.section.buttons,
        }

        alpha.setup(dashboard.config)

        alpha.setup(dashboard.opts)
    end,
}
