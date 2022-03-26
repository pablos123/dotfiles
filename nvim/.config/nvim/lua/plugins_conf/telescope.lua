require('telescope').load_extension('fzf')

local opts = { silent = true, noremap = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>o", "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
keymap("n", "<leader>b", "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)
keymap("n", "<leader>h", "<cmd>lua require('telescope.builtin').help_tags()<cr>", opts)

keymap("n", "<leader>gb", "<cmd>lua require('telescope.builtin').git_branches()<cr>", opts)
keymap("n", "<leader>gc", "<cmd>lua require('telescope.builtin').git_commits()<cr>", opts)
keymap("n", "<leader>gs", "<cmd>lua require('telescope.builtin').git_status()<cr>", opts)
