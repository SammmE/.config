return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({
      options = {
        -- create space for the left sidebar and show a label there
        offsets = {
          {
            filetype = "neo-tree",
            text = "Explorer",
            text_align = "left",
            highlight = "Directory",
            separator = true,
          },
        },
        -- optional: don’t list the Neo-tree buffer as a tab
        custom_filter = function(bufnr)
          return vim.bo[bufnr].filetype ~= "neo-tree"
        end,
      },
    })
  end,
}
