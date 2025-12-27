return {
    'vyfor/cord.nvim',
    lazy = false,
    build = ':Cord update',
    opts = {
        display = {
            theme = "atom",
            view = "editor",
            swap_icons = true,
        },
        text = {
            default = '',
            workspace = '',
            viewing = '',
            editing = '',
        },
        timestamp = {
            enabled = true,
        },
        editor = {
            client = "neovim",
            tooltip = "Neovim",
        },
    },
}
