return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
            actions = {
                open_file = {
                    quit_on_open = true,
                },
            },
        })

        local api = require("nvim-tree.api")

        local function edit_or_open()
            local node = api.tree.get_node_under_cursor()
            if node.nodes ~= nil then
                api.node.open.edit()
            else
                api.node.open.edit()
                api.tree.close()
            end
        end

        vim.api.nvim_create_autocmd("FileType", {
            pattern = "NvimTree",
            callback = function(args)
                local bufnr = args.buf
                vim.keymap.set("n", "l", edit_or_open, { buffer = bufnr, desc = "Edit Or Open" })
                vim.keymap.set("n", "h", api.tree.close, { buffer = bufnr, desc = "Close" })
                vim.keymap.set("n", "H", api.tree.collapse_all, { buffer = bufnr, desc = "Collapse All" })
            end,
        })

        vim.api.nvim_set_keymap(
            "n",
            "<leader>e",
            "<cmd>NvimTreeToggle<CR>",
            { noremap = true, silent = true, desc = "Toggle NvimTree" }
        )
    end
}
