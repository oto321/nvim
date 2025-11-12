-- lazy.nvim
return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  opts = {
    cmdline = {
      enabled = true,
      view = "cmdline_popup",
    },
    messages = {
      enabled = false, -- Disable message UI
    },
    popupmenu = {
      enabled = false, -- Disable popupmenu UI
    },
    notify = {
      enabled = false, -- Disable notify integration
    },
    lsp = {
      progress = {
        enabled = false, -- Disable LSP progress
      },
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = false,
        ["vim.lsp.util.stylize_markdown"] = false,
        ["cmp.entry.get_documentation"] = false,
      },
      hover = {
        enabled = false,
      },
      signature = {
        enabled = false,
      },
      message = {
        enabled = false,
      },
    },
    views = {
      cmdline_popup = {
        position = {
          row = "50%",
          col = "50%",
        },
        size = {
          width = 40,
          height = "auto",
        },
        border = {
          style = "rounded",
          padding = { 0, 0 },
        },
        win_options = {
          winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
        },
      },
    },
  },
}
