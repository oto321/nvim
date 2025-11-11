return {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre",
    opts = {
        signs = {
            add          = { text = '┃' },
            change       = { text = '┃' },
            delete       = { text = '_' },
            topdelete    = { text = '‾' },
            changedelete = { text = '~' },
            untracked    = { text = '┆' },
        },
        signcolumn = true,
        current_line_blame = false,
        watch_gitdir = { follow_files = true },
    },
    config = function()
        require('gitsigns').setup ()
    end
}
