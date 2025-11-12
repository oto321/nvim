return {
  "natecraddock/workspaces.nvim",
  lazy = false,
  opts = {
    sort = "recent",
    hooks = {
      open = {
        function()
          pcall(function()
            require("persistence").load({ last = true })
          end)
        end,
      },
    },
  },
}
