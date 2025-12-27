return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    config = function()
        require "nvim-treesitter.configs".setup {
            ensure_installed = {
                "lua",
                "typescript",
                "javascript",
                "tsx",
                "html",
                "css",
                "python",
                "java",
                "markdown",
                "markdown_inline",
                "json",
            },

            sync_install = false,
            auto_install = true,

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = true
            },

            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "gnn",
                    node_incremental = "grn",
                    scope_incremental = "grc",
                    node_decremental = "grm",
                },
            },

            disable = function(lang, buf)
                local max_filesize = 100 * 1024 -- 100 KB
                local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                return ok and stats and stats.size > max_filesize
            end

        }
    end,
}
