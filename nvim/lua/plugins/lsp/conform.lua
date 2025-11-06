return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			desc = "Format buffer",
		},
	},
	opts = {
		notify_on_error = false,
		-- format on save with LSP fallback when no external formatter is set
		format_on_save = { timeout_ms = 500, lsp_format = "fallback" },
		-- pick ONE stack per language where noted
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "biome" },
			typescript = { "biome" },
			json = { "biome" },
			sh = { "shfmt" },
			python = { "ruff_format", "black" }, -- ruff_format is fast; black if you prefer PEP8 canonical
			go = { "gofumpt", "goimports" },
			rust = { "rustfmt" },
		},
		formatters = {
			shfmt = { prepend_args = { "-i", "2", "-ci" } },
			-- ensure ruff_format calls `ruff format -` which Conform supports
			ruff_format = { command = "ruff", args = { "format", "-" } },
		},
	},
}
