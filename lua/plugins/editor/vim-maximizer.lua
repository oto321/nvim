return {
	"declancm/maximize.nvim",
	keys = {
		{ "<leader>sm", "<cmd>lua require('maximize').toggle()<CR>", desc = "Maximize/minimize a split" },
	},
	config = function()
		require('maximize').setup()
	end,
}
