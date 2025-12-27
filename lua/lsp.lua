local map = vim.keymap

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
        local opts = { buffer = ev.buf, silent = true }

        map.set("n", "gR", function() require('snacks').picker.lsp_references() end, {
            buffer = ev.buf,
            silent = true,
            desc = "Show LSP references"
        })

        map.set("n", "gD", vim.lsp.buf.declaration, {
            buffer = ev.buf,
            silent = true,
            desc = "Go to declaration"
        })

        map.set("n", "gd", function() require('snacks').picker.lsp_definitions() end, {
            buffer = ev.buf,
            silent = true,
            desc = "Show LSP definitions"
        })

        map.set("n", "gi", function() require('snacks').picker.lsp_implementations() end, {
            buffer = ev.buf,
            silent = true,
            desc = "Show LSP implementations"
        })

        map.set("n", "gt", function() require('snacks').picker.lsp_type_definitions() end, {
            buffer = ev.buf,
            silent = true,
            desc = "Show LSP type definitions"
        })

        map.set("n", "K", vim.lsp.buf.hover, {
            buffer = ev.buf,
            silent = true,
            desc = "Show hover documentation"
        })

        map.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {
            buffer = ev.buf,
            silent = true,
            desc = "Show available code actions"
        })

        map.set("n", "<leader>rn", vim.lsp.buf.rename, {
            buffer = ev.buf,
            silent = true,
            desc = "Smart rename symbol"
        })

        -- map.set("n", "<leader>D", function() require('snacks').picker.diagnostics({ bufnr = 0 }) end, {
        --     buffer = ev.buf,
        --     silent = true,
        --     desc = "Show buffer diagnostics"
        -- })
        --
        -- map.set("n", "<leader>d", vim.diagnostic.open_float, {
        --     buffer = ev.buf,
        --     silent = true,
        --     desc = "Show line diagnostics"
        -- })
        --
        -- map.set("i", "<C-s>", vim.lsp.buf.signature_help, {
        --     buffer = ev.buf,
        --     silent = true,
        --     desc = "Show LSP signature help"
        -- })

        local warnings = vim.diagnostic.severity

        vim.diagnostic.config({
            virtual_text = {
                prefix = "●",
            },
            signs = {
                text = {
                    [warnings.ERROR] = "✘",
                    [warnings.WARN] = "▲",
                    [warnings.HINT] = "⚑",
                    [warnings.INFO] = "»",
                },
                severity = { min = warnings.HINT },
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
