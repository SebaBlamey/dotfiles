return {
	"rcarriga/nvim-notify",
	config = function()
		require("notify").setup({
			stages = "slide",
			timeout = 2000,
		})
	end,
}
