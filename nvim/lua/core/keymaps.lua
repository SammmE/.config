vim.g.mapleader = " "
local map = vim.keymap.set
local opts = { noremap=true, silent=true }

-- Arrow keys off to force hjkl
map({"n","v","i"}, "<Up>", "<Nop>", opts)
map({"n","v","i"}, "<Down>", "<Nop>", opts)
map({"n","v","i"}, "<Left>", "<Nop>", opts)
map({"n","v","i"}, "<Right>", "<Nop>", opts)

-- Quality of life without fighting vim habits
map("n", "<leader>w", "<cmd>write<cr>", opts)
map("n", "<leader>q", "<cmd>quit<cr>", opts)
map("n", "<leader>h", "<cmd>nohlsearch<cr>", opts)

