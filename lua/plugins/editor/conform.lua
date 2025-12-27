return {
    'stevearc/conform.nvim',
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
        {
            "<leader>p",
            function()
                require("conform").format({ async = true })
            end,
            mode = "",
            desc = "Format buffer",
        }
    },
    opts = {
        formatters_by_ft = {
            javascript = { "biome" },
            typescript = { "biome" },
            javascriptreact = { "biome" },
            typescriptreact = { "biome" },
            css = { "biome" },
            html = { "prettier" },
            json = { "prettier" },
            yaml = { "prettier" },
            lua = { "stylua" },
            python = { "ruff_format", "ruff_fix", "black" },
            markdown = { "prettier", "markdown-toc" },
        },
        default_format_opts = {
            lsp_format = "fallback",
        },
        format_on_save = {
            enabled = true
        },
    }
}
