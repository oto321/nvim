return {
    "numToStr/Comment.nvim",
    opts = {
        padding = true,
        sticky = true,
        toggler = {
            line = "gcc",
            block = "gbc",
        },
        opleader = {
            line = "gc",
            block = "gb",
        },
        mappings = {
            basic = true,
            extra = true,
        },
    },
    config = function()
        require("Comment").setup()

        local keymap = vim.keymap.set
        local comment = require("Comment.api")


        -- Normal mode: comment current line
        keymap("n", "<leader>/", function()
            comment.toggle.linewise.current()
        end, { noremap = true, silent = true, desc = "Toggle comment line" })

        -- Visual mode: comment selection
        keymap("v", "<leader>/", function()
            comment.toggle.linewise(vim.fn.visualmode())
        end, { noremap = true, silent = true, desc = "Toggle comment selection" })
    end,

}
