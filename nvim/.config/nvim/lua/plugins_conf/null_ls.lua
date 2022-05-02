require("null-ls").setup({
    sources = {
        require("null-ls").builtins.diagnostics.ansiblelint,
        require("null-ls").builtins.diagnostics.pylint,
        require("null-ls").builtins.diagnostics.cppcheck,
        require("null-ls").builtins.formatting.isort,
        require("null-ls").builtins.formatting.black,
        require("null-ls").builtins.formatting.trim_whitespace,
        require("null-ls").builtins.formatting.trim_newlines,
        require("null-ls").builtins.formatting.uncrustify,
    },
    on_attach = function(client)
        if client.server_capabilities.document_formatting then
            vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
            augroup END
            ]])
        end
    end,
})
