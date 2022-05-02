function TreeSitterUpdate()
    vim.cmd(':TSInstall vim')
    vim.cmd(':TSInstall c')
    vim.cmd(':TSInstall perl')
    vim.cmd(':TSInstall python')
    vim.cmd(':TSInstall javascript')
    vim.cmd(':TSInstall json')
    vim.cmd(':TSInstall html')
    vim.cmd(':TSInstall css')
    vim.cmd(':TSInstall bash')
    vim.cmd(':TSInstall yaml')
    vim.cmd(':TSInstall lua')
end

local opts = { silent = true, noremap = true }
local keymap = vim.api.nvim_set_keymap

vim.api.nvim_create_user_command('TSSyntax', TreeSitterUpdate, {})

