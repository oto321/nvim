return {
    'goolord/alpha-nvim',
    lazy = false,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
            "",
            "",
            "███▄▄▄▄    ▄█    █▄   ▄█    ▄█████████▄ ",
            "███▀▀▀██▄ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄",
            "███   ███ ███    ███ ███  ███   ███   ███",
            "███   ███ ███    ███ ███  ███   ███   ███",
            " ▀█   █▀   ▀██████▀  █▀    ▀█   ███   █▀ ",
            "",
            "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━",
            "",
        }

        dashboard.section.buttons.val = {
            dashboard.button("e", "  New File", ":ene <BAR> startinsert <CR>"),
            dashboard.button("f", "  Find File", function() Snacks.picker.smart() end),
            dashboard.button("r", "  Recent Files", function() Snacks.picker.recent() end),
            dashboard.button("s", "  Restore Session", function() require("persistence").load() end),
            dashboard.button("g", "  Grep Text", function() Snacks.picker.grep() end),
            dashboard.button("c", "  Config", ":e $MYVIMRC <CR>"),
            dashboard.button("q", "  Quit", ":qa<CR>")
        }

        for _, button in ipairs(dashboard.section.buttons.val) do
            button.opts.hl = "AlphaButtons"
            button.opts.hl_shortcut = "AlphaShortcut"
        end

        dashboard.section.header.opts.hl = "AlphaHeader"
        dashboard.section.buttons.opts.hl = "AlphaButtons"
        dashboard.section.footer.opts.hl = "AlphaFooter"

        dashboard.opts.layout[1].val = 8

        local function footer()
            local total_plugins = require("lazy").stats().count
            local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
            local version = vim.version()
            local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

            return datetime .. "   " .. total_plugins .. " plugins" .. nvim_version_info
        end

        dashboard.section.footer.val = footer()

        alpha.setup(dashboard.opts)

        vim.api.nvim_create_autocmd("User", {
            pattern = "LazyVimStarted",
            callback = function()
                dashboard.section.footer.val = footer()
                pcall(vim.cmd.AlphaRedraw)
            end,
        })
    end,
}
