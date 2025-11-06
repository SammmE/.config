return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    config = function()
      require("neo-tree").setup({
        filesystem = {
          hijack_netrw_behavior = "open_default",
          follow_current_file = { enabled = true },
          use_libuv_file_watcher = true,
        },
        window = {
          width = 32,
        },
      })

      vim.keymap.set("n", "<leader>e", function()
        local manager = require("neo-tree.sources.manager")
        local state = manager.get_state("filesystem")

        if state and state.winid and vim.api.nvim_win_is_valid(state.winid) then
          -- Tree is open: jump focus to it
          vim.api.nvim_set_current_win(state.winid)
        else
          -- Tree not open: open it
          vim.cmd("Neotree show filesystem left")
        end
      end, { desc = "Focus or open Neo-tree" })
    end,
  },
}

