return {
    "folke/todo-comments.nvim",
    event = { "BufRead", "BufNewFile" },
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        signs = true,
        keywords = {
            FIX = { icon = "✘ ", color = "error", alt = { "FIXME", "BUG", "FIXIT", "ISSUE" } },
            TODO = { icon = " ", color = "info" },
            HACK = { icon = " ", color = "warning" },
            WARN = { icon = "▲ ", color = "warning", alt = { "WARNING", "XXX" } },
            PERF = { icon = " ", color = "default", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
            NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
        },
        highlight = {
            multiline = true,
            before = "",
            keyword = "wide",
            after = "declaration",
        },
    },
}
