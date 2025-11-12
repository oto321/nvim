return {
    "williamboman/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "ts_ls",
            "html",
            "cssls",
            "tailwindcss",
            "lua_ls",
            "emmet_ls",
            "prismals",
            "pyright",
            "eslint",
            "jdtls",
        },
        handlers = {
            function(server)
                require("lspconfig")[server].setup({})
            end,
            ["lua_ls"] = function()
                local opts = require("lsp.lua_ls")
                require("lspconfig").lua_ls.setup(opts)
            end,
        },
    },
    config = function(_, opts)
        require("mason-lspconfig").setup({
            ensure_installed = opts.ensure_installed,
            handlers = {
                function(server) require("lspconfig")[server].setup({}) end,
            },
        })
    end,
    dependencies = {
        {
            "mason-org/mason.nvim",
            opts = {
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    },
                },
            },
        },
        "neovim/nvim-lspconfig",
    },

}
