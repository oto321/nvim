return {
    "luukvbaal/statuscol.nvim",
    config = function()
        local builtin = require("statuscol.builtin")
        require("statuscol").setup({
            relculnum = true,
            segments = {
                {
                    sign = {
                        name = { "Diagnostic.*", "gitsigns.*" },
                        maxwidth = 1,
                        colwidth = 1,
                        auto = false,
                    },
                    click = "v:lua.ScSa",
                },
                { text = { builtin.lnumfunc, " " }, click = "v:lua.ScLa" },
                {
                    text = {
                        function(args)
                            args.fold.close = "󰅂 "
                            args.fold.open = "󰅀 "
                            args.fold.sep = "│ "
                            return builtin.foldfunc(args)
                        end,
                    },
                    click = "v:lua.ScFa",
                },
            },
        })
    end,
}
