require("nnn").setup()

local opts = { silent = true, noremap = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>t", " <cmd>NnnPicker<CR>", opts)
keymap("t", "<leader>t", " <cmd>NnnPicker<CR>", opts)
