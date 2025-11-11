return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        local toggleterm = require("toggleterm")
        local Terminal = require("toggleterm.terminal").Terminal
        local keymap = vim.keymap.set

        -- Setup ToggleTerm
        toggleterm.setup({
            size = function(term)
                if term.direction == "horizontal" then
                    return 15
                else
                    return vim.o.columns * 0.4
                end
            end,
            open_mapping = [[<c-\>]],
            hide_numbers = true,
            shade_terminals = true,
            shading_factor = 2,
            start_in_insert = true,
            persist_size = true,
            persist_mode = true,
            direction = "float",
            close_on_exit = true,
            shell = vim.o.shell,
            auto_scroll = true,
            float_opts = {
                border = "curved",
                winblend = 0,
                highlights = { border = "Normal", background = "Normal" },
            },
        })

        -- Terminal navigation keymaps
        vim.api.nvim_create_autocmd("TermOpen", {
            pattern = "term://*",
            callback = function()
                local opts = { buffer = 0, noremap = true, silent = true }
                vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], vim.tbl_extend("force", opts, { desc = "Exit terminal insert mode" }))
                vim.keymap.set("t", "jj", [[<C-\><C-n>]], vim.tbl_extend("force", opts, { desc = "Exit terminal insert mode" }))
                vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], vim.tbl_extend("force", opts, { desc = "Go to left window" }))
                vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], vim.tbl_extend("force", opts, { desc = "Go to below window" }))
                vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], vim.tbl_extend("force", opts, { desc = "Go to above window" }))
                vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], vim.tbl_extend("force", opts, { desc = "Go to right window" }))
                vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], vim.tbl_extend("force", opts, { desc = "Window commands" }))
            end,
        })

        -- Persistent terminals table
        local terminals = {
            float = Terminal:new({ direction = "float", hidden = true }),
            horizontal = Terminal:new({ direction = "horizontal", hidden = true }),
            vertical = Terminal:new({ direction = "vertical", hidden = true }),
        }

        -- Helper to toggle terminals
        local function toggle(term)
            terminals[term]:toggle()
        end

        -- Leader keymaps with descriptions
        local mappings = {
            tf = { "float", "Toggle floating terminal" },
            tv = { "vertical", "Toggle vertical terminal" },
            th = { "horizontal", "Toggle horizontal terminal" },
        }

        for k, v in pairs(mappings) do
            keymap("n", "<leader>" .. k, function() toggle(v[1]) end, { noremap = true, silent = true, desc = v[2] })
        end
    end,
}
