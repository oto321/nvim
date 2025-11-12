return {
    "saghen/blink.cmp",
    dependencies = {
        "rafamadriz/friendly-snippets",
        "fang2hou/blink-copilot",
    },
    build = "cargo build --release",
    version = "1.*",
    event = "InsertEnter",
    opts = {
        appearance = {
            nerd_font_variant = "mono",
        },
        completion = {
            documentation = {
                auto_show = true,         -- show documentation automatically
                auto_show_delay_ms = 500, -- 500 ms delay
                treesitter_highlighting = true,
                window = {
                    scrollbar = true
                },
            },
            menu = {
                enabled = true,
                min_width = 40,
                max_height = 15,
                winblend = 0,
                border = "double",
                scrollbar = true,
                scrolloff = 2,
                draw = {
                    treesitter = { 'lsp' },
                    columns = { { "label", "label_description", gap = 1 }, { "source_name" } },
                    components = {
                        source_name = {
                            text = function(ctx) return ctx.source_name end,
                            highlight = "BlinkCmpSource",
                        }
                    }
                }
            },
            keyword = {
                range = "full" -- match text around cursor
            },
            trigger = {
                show_on_keyword = true, -- show completion menu on keyword
            },
            ghost_text = {
                enabled = true,
            },
            list = {
                selection = {
                    preselect = true,    -- select the first item in the completion menu
                    auto_insert = false, -- don't insert completion untill accepted
                }
            },
        },

        sources = {
            default = {
                'path',
                'lsp',
                'snippets',
                'buffer',
                'copilot',
            },
            providers = {
                path = {
                    module = 'blink.cmp.sources.path',
                    fallbacks = { 'buffer' },
                    min_keyword_length = 0,
                    opts = {
                        trailing_slash = true,
                        label_trailing_slash = true,
                        get_cwd = function(context) return vim.fn.expand(('#%d:p:h'):format(context.bufnr)) end,
                        ignore_root_slash = false,
                    }
                },
                copilot = {
                    name = "buddy",
                    module = "blink-copilot",
                    async = true,
                }
            }
        },

        fuzzy = {
            implementation = "prefer_rust_with_warning",
            sorts = {
                'score',
                'sort_text',
                'label'
            }
        },

        keymap = {
            -- disable default keymaps
            preset = 'default',

            ['<M-j>'] = { 'select_next', 'fallback' }, -- alt j for next
            ['<M-k>'] = { 'select_prev', 'fallback' }, -- alt k for previous
            ['<M-h>'] = { 'hide', 'fallback' },        -- alt h for hide
            ['<M-l>'] = { 'accept', 'fallback' },      -- alt l for accept
        },

        signature = {
            enabled = true,
            window = {
                treesitter_highlighting = true,
            }
        }
    },
    opts_extended = { "sources.default" },
    config = function(_, opts)
        require('blink.cmp').setup(opts)

        vim.api.nvim_set_hl(0, 'BlinkCmpMenuSelection', {
            bg = '#3e4451',
            fg = '#ffffff',
            bold = true
        })

        vim.api.nvim_create_autocmd('ColorScheme', {
            pattern = '*',
            callback = function()
                vim.api.nvim_set_hl(0, 'BlinkCmpMenuSelection', {
                    bg = '#3e4451',
                    fg = '#ffffff',
                    bold = true
                })
            end,
        })
    end,

}
