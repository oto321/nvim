return {
    "folke/zen-mode.nvim",
    opts = {
        window = {
            backdrop = 1,
            width = 0.5,
            height = .95,
            options = {
                number = true,
                relativenumber = true,
            }
        },
        plugins = {
            options = {
                enabled = true,
                laststatus = 0
            },
            kitty = {
                enabled = true,
                font = "+2",
            }
        },
        on_open = function()
            -- disable Snacks indent guides
            if package.loaded["snacks"] then
                require("snacks").indent.disable()
            end
        end,
        on_close = function()
            -- re-enable Snacks indent guides
            if package.loaded["snacks"] then
                require("snacks").indent.enable()
            end
        end,
    },
    config = function(_, opts)
        require("zen-mode").setup(opts)
        vim.keymap.set("n", "<leader>z", function()
            require("zen-mode").toggle()
        end, { desc = "Toggle Zen Mode" })
    end,
}
