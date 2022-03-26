require'nvim-tree'.setup{}

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- nvim tree
keymap("n", "<leader>t", ":NvimTreeToggle<cr>", opts)
keymap("v", "<leader>t", "<esc>:NvimTreeToggle<cr>", opts)

keymap("n", "<leader>rt", ":NvimTreeRefresh<cr>", opts)
keymap("n", "<leader>ft", ":NvimTreeFindFile<cr>", opts)
