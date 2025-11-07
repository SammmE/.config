return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		exclude = {
			filetypes = { "dashboard" }, -- ignore dashboard-nvim
			buftypes = { "nofile" }, -- optional, ignores many plugin UIs
		},
	},
}
