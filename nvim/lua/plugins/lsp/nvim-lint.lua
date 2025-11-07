return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		local lint = require("lint")
		lint.linters_by_ft = {
			javascript = { "biomejs" },
			typescript = { "biomejs" },
			json = { "biomejs" },
			lua = { "luacheck" },
			sh = { "shellcheck" },
			python = { "ruff" },
			yaml = { "yamllint" },
			markdown = { "markdownlint-cli2" },
			go = { "golangcilint" },
		}

		-- Lint on save and on leaving insert mode
		local aug = vim.api.nvim_create_augroup("nvim_lint", { clear = true })
		vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
			group = aug,
			callback = function()
				lint.try_lint()
			end,
		})

		-- Manual: :Lua require('lint').try_lint()
	end,
}
