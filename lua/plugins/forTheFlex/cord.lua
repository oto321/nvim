return  {
  'vyfor/cord.nvim',
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
