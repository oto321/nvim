return {
    'wasabeef/bufferin.nvim',
    keys = {
        { "<leader>bb", "<cmd>Bufferin<cr>", desc = "Toggle bufferin" }
    },
    config = function()
        require('bufferin').setup({
            mappings = {
                select = '<CR>',
                delete = 'dd',
                move_up = 'K',
                move_down = 'J',
                quit = 'q',
            }
        })

        vim.api.nvim_create_autocmd('FileType', {
            pattern = 'bufferin',
            callback = function(ev)
                vim.keymap.set('n', 'H', function()
                    local line = vim.api.nvim_get_current_line()
                    local bufnr = tonumber(line:match('^%s*(%d+)'))
                    if bufnr then
                        vim.cmd('close')
                        vim.cmd('split')
                        vim.cmd('buffer ' .. bufnr)
                    end
                end, { buffer = ev.buf, desc = "Open in horizontal split" })

                vim.keymap.set('n', 'L', function()
                    local line = vim.api.nvim_get_current_line()
                    local bufnr = tonumber(line:match('^%s*(%d+)'))
                    if bufnr then
                        vim.cmd('close')
                        vim.cmd('vsplit')
                        vim.cmd('buffer ' .. bufnr)
                    end
                end, { buffer = ev.buf, desc = "Open in vertical split" })
            end
        })
    end,
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    }
}
