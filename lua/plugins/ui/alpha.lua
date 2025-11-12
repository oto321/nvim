return {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- header ascii art
        dashboard.section.header.val = {
            "███▄▄▄    ▄█  █▄   ▄█    ▄▄▄███▄▄▄  ",
            "███▀▀██▄ ███  ███ ███  ▄██▀▀███▀▀██▄",
            "███  ███ ███  ███ ███▌ ███  ███  ███",
            "███  ███ ███  ███ ███  ███  ███  ███",
            " ▀█  █▀   ▀████▀  █▀    ▀█  ███  █▀ ",
        }

        -- set menu buttons
        dashboard.section.buttons.val = {
            dashboard.button("e", " New File", ":ene <BAR> startinsrrt <CR>"),
            dashboard.button("f", " Find file", function() Snacks.picker.smart() end),
            dashboard.button("s", " Grep word", function() Snacks.picker.grep() end),
            dashboard.button("r", " Recent files", function() Snacks.picker.recent() end),
            dashboard.button("q", " Quit", ":qa<CR>"),
        }

        -- footer plugin count and load time
        local stats = require("lazy").stats()
        local plugins_count = stats.count

        dashboard.section.footer.val = plugins_count .. " Plugins loaded"

        alpha.setup(dashboard.opts)
    end,
}
