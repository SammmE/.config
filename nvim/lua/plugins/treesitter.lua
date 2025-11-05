return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "bash",
        "fish",
        "json",
        "markdown",
        "python",
        "java",
        "javascript",
        "typescript",
        "cpp",
        "rust",
        "go",
      },
      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = { enable = true },
    })
  end,
}

