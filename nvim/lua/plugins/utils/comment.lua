-- lua/plugins/comment.lua
return {
	"numToStr/Comment.nvim",
	event = { "BufReadPre", "BufNewFile" },
	-- Optional: enable context-aware comments for jsx/tsx, vue, etc.
	-- dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
	opts = {
		padding = true,
		sticky = true,
		ignore = "^$", -- skip empty lines on linewise ops
		mappings = { basic = true, extra = true },
		-- Uncomment if you use ts-context-commentstring
		-- pre_hook = function(ctx)
		--   return require("ts_context_commentstring.integrations.comment_nvim")
		--     .create_pre_hook()(ctx)
		-- end,
	},
	config = function(_, opts)
		require("Comment").setup(opts)

		local api = require("Comment.api")
		local map = vim.keymap.set
		local kmopts = { noremap = true, silent = true }
		local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)

		-- Leader-friendly toggles
		map("n", "<leader>/", api.toggle.linewise.current, kmopts)
		map("n", "<leader>gb", api.toggle.blockwise.current, kmopts)

		-- Visual mode toggles
		map("v", "<leader>/", function()
			vim.api.nvim_feedkeys(esc, "nx", false)
			api.toggle.linewise(vim.fn.visualmode())
		end, kmopts)
		map("v", "<leader>gb", function()
			vim.api.nvim_feedkeys(esc, "nx", false)
			api.toggle.blockwise(vim.fn.visualmode())
		end, kmopts)

		-- Insert mode quick comment current line, return to insert
		map("i", "<M-/>", function()
			vim.api.nvim_feedkeys(esc, "nx", false)
			api.toggle.linewise.current()
			vim.api.nvim_feedkeys("a", "nx", false)
		end, kmopts)
	end,
}
