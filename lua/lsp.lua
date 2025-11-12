local map = vim.keymap

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
        local opts = { buffer = ev.buf, silent = true }
        -- Show LSP references with Telescope
        map.set("n", "gR", "<cmd>Telescope lsp_references<cr>", {
            buffer = ev.buf,
            silent = true,
            desc = "Show LSP references"
        })

        -- Go to declaration
        map.set("n", "gD", vim.lsp.buf.declaration, {
            buffer = ev.buf,
            silent = true,
            desc = "Go to declaration"
        })

        -- Show LSP definitions with Telescope
        map.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", {
            buffer = ev.buf,
            silent = true,
            desc = "Show LSP definitions"
        })

        -- Show LSP implementations with Telescope
        map.set("n", "gi", "<cmd>Telescope lsp_implementations<cr>", {
            buffer = ev.buf,
            silent = true,
            desc = "Show LSP implementations"
        })

        -- Show LSP type definitions with Telescope
        map.set("n", "gt", "<cmd>Telescope lsp_type_definitions<cr>", {
            buffer = ev.buf,
            silent = true,
            desc = "Show LSP type definitions"
        })

        -- Show hover documentation
        map.set("n", "K", vim.lsp.buf.hover, {
            buffer = ev.buf,
            silent = true,
            desc = "Show hover documentation"
        })

        -- Show available code actions
        map.set({ "n", "v" }, "<leader>ra", vim.lsp.buf.code_action, {
            buffer = ev.buf,
            silent = true,
            desc = "Show available code actions"
        })

        -- Smart rename symbol
        map.set("n", "<leader>rn", vim.lsp.buf.rename, {
            buffer = ev.buf,
            silent = true,
            desc = "Smart rename symbol"
        })

        -- Show buffer diagnostics with Telescope
        map.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<cr>", {
            buffer = ev.buf,
            silent = true,
            desc = "Show buffer diagnostics"
        })

        -- Show line diagnostics in floating window
        map.set("n", "<leader>d", vim.diagnostic.open_float, {
            buffer = ev.buf,
            silent = true,
            desc = "Show line diagnostics"
        })

        -- Show LSP signature help (in insert mode)
        map.set("i", "<C-s>", vim.lsp.buf.signature_help, {
            buffer = ev.buf,
            silent = true,
            desc = "Show LSP signature help"
        })

        -- change signs in the gutter from text to signs
        local warnings = vim.diagnostic.severity

        vim.diagnostic.config({
            -- Virtual text (inline diagnostic messages)
            virtual_text = {
                prefix = "●",
            },

            -- Signs in the gutter
            signs = {
                text = {
                    [warnings.ERROR] = "✘",
                    [warnings.WARN] = "▲",
                    [warnings.HINT] = "⚑",
                    [warnings.INFO] = "»",
                },
                severity = { min = warnings.HINT }, -- 
            },

            underline = {
                severity = { min = warnings.HINT }, 
            },

            update_in_insert = false,

            float = {
                header = "",
                prefix = "",
                severity_sort = true,
            },
            severity_sort = true,
        })
    end,
})
