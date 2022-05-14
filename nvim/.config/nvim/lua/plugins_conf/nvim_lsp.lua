-- I'm executin ansible lint with null ls all non-ls diagnostic i prefer
-- doing it that way
require'lspconfig'.ansiblels.setup({
    ansibleLint = {
      enabled = false,
    },
})
require'lspconfig'.perlpls.setup({
  perlcritic = {
      enabled = true
  },
  on_attach = function(client)
      client.server_capabilities.document_formatting = false
      client.server_capabilities.document_range_formatting = false
  end,
})

-- disabling the format capabilities of the lsp to no get a promt asking
-- if i want to format with pylsp or null-ls
require("lspconfig").pylsp.setup({
  on_attach = function(client)
      client.server_capabilities.document_formatting = false
      client.server_capabilities.document_range_formatting = false
  end,
})
