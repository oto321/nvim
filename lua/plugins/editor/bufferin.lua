return {
    'wasabeef/bufferin.nvim',
    keys = {
        { "<leader>bb", "<cmd>Bufferin<cr>", desc = "Toggle bufferin" }
    },
    config = function()
        require('bufferin').setup({
            window = {
                border = "rounded",
                width = 0.4,

            },
            display = {
                show_numbers = false,
                show_modified = true,
            },
            icons = {
                modified = "*",
            },
            mappings = {
                select = '<CR>',
                delete = 'dd',
                move_up = 'K',
                move_down = 'J',
                quit = 'q',
            },
            show_window_layout = true,
        })
    end,
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    }
}
