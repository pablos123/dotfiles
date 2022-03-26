local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- leader
keymap("", "<space>", "<nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- for better comunication at viewing code with someone
keymap("n", "<f5>", ":set relativenumber!<cr>", opts)
keymap("v", "<f5>", "<esc>:set relativenumber!<cr>v", opts)
keymap("i", "<f5>", "<esc>:set relativenumber!<cr>a", opts)

-- to hold 'tab' mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move block of lines
keymap("v", "<C-j>", ":m '>+1<cr>gv=gv", opts)
keymap("v", "<C-k>", ":m '<-2<cr>gv=gv", opts)

keymap("n", "<C-j>", ":m .+1<cr>==", opts)
keymap("n", "<C-k>", ":m .-2<cr>==", opts)

-- completeness
keymap("n", "Y", "y$", opts)

-- centered search
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)
keymap("n", "J", "mzJ`z", opts)

-- more break points in insert mode
keymap("i", ",", ",<c-g>u", opts)
keymap("i", ".", ".<c-g>u", opts)
keymap("i", "!", "!<c-g>u", opts)
keymap("i", "?", "?<c-g>u", opts)
