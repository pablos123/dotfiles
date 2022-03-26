vim.cmd "colorscheme gruvbox-material"

vim.opt.background = "dark"
vim.g.gruvbox_material_background = "medium" -- default value: "medium"

require "plugins_conf/nvim_tree"

require "plugins_conf/telescope"

-- the order of these two plugins is important due to
-- doing particular setups in nvim_lsp, nvim_cmp is always
-- calling the server setup with all capabilities
require "plugins_conf/nvim_cmp"
require "plugins_conf/nvim_lsp"

require "plugins_conf/null_ls"

require "plugins_conf/vim_airline"
