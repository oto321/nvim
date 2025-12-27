return {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "JoosepAlviste/nvim-ts-context-commentstring",
    },
    config = function()
        -- Import comment plugin safely
        local comment = require("Comment")

        -- Enable Comment.nvim
        comment.setup({
            padding = true,
            sticky = true,
            ignore = nil,

            toggler = {
                line = '<leader>/',
                block = 'gbc',
            },

            opleader = {
                line = '<leader>/',
                block = 'gb',
            },

            extra = {
                above = 'gcO',
                below = 'gco',
                eol = 'gcA',
            },

            mappings = {
                basic = true,
                extra = true,
            },

            -- Integrate with treesitter for better jsx/tsx commenting
            pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
        })
    end,
}
