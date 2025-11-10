return {
    "saghen/blink.cmp",
    dependencies = {
        "rafamadriz/friendly-snippets",
        "fang2hou/blink-copilot"
    },
    build = "cargo build --release",
    version = "1.*",
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
                min_width = 20,
                max_height = 15,
                winblend = 0,
                scrollbar = true,
                scrolloff = 2,
                draw = {
                    treesitter = { 'lsp' },
                }
            },
            keyword = {
                range = "full" -- match text around cursor
            },
            trigger = {
                show_on_keyword = true, -- show completion menu on keyword
            },
            list = {
                selection = {
                    preselect = true,    -- select the first item in the completion menu
                    auto_insert = false, -- don't insert completion untill accepted
                }
            },
            ghost_text = {
                enabled = true -- show ghost text rather than adding completion
            }
        },

        sources = {
            default = {
                'lsp',
                'path',
                'snippets',
                'buffer',
                'copilot',
            },
            providers = {
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
                'sort_text',
                'score',
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
    opts_extended = { "sources.default" }
}
