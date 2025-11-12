return {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    lazy = false,
    config = function()
        require("oil").setup({
            vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory with oil" }),
            vim.keymap.set("n", "<leader>-", require("oil").toggle_float, { desc = "Toggle float oil" })
        })
    end,
}
