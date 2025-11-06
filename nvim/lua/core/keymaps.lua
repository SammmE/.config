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


vim.keymap.set('i', '<M-h>', '<Left>')
vim.keymap.set('i', '<M-j>', '<Down>')
vim.keymap.set('i', '<M-k>', '<Up>')
vim.keymap.set('i', '<M-l>', '<Right>')
vim.keymap.set('i', '<M-b>', '<C-o>b')  -- move back a word
vim.keymap.set('i', '<M-w>', '<C-o>w')  -- move forward a word
vim.keymap.set('i', '<M-d>', '<C-o>dw') -- delete next word

