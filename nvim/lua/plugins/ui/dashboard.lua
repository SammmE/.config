-- lua/plugins/ui/dashboard.lua
return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local header = {
			[[                                                                       ]],
			[[                                                                     ]],
			[[       ████ ██████           █████      ██                     ]],
			[[      ███████████             █████                             ]],
			[[      █████████ ███████████████████ ███   ███████████   ]],
			[[     █████████  ███    █████████████ █████ ██████████████   ]],
			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
			[[                                                                       ]],
		}

		require("dashboard").setup({
			theme = "doom", -- or "hyper"
			config = {
				header = header,
				center = {
					{ icon = "  ", desc = "New file", action = "ene | startinsert", key = "n" },
					{ icon = "  ", desc = "Find file", action = "Telescope find_files", key = "f" },
					{ icon = "  ", desc = "Config", action = "edit $MYVIMRC", key = "c" },
					{ icon = "  ", desc = "Quit", action = "qa", key = "q" },
				},
			},
			hide = { statusline = false, tabline = false, winbar = false },
		})

		-- Optional: color the header
		-- vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#7aa2f7" })
	end,
}
