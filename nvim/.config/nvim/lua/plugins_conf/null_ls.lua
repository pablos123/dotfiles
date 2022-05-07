require("null-ls").setup({
    sources = {
        require("null-ls").builtins.diagnostics.ansiblelint,
        require("null-ls").builtins.diagnostics.pylint,
        require("null-ls").builtins.diagnostics.cppcheck,
        require("null-ls").builtins.diagnostics.mypy,
        require("null-ls").builtins.formatting.isort,
        require("null-ls").builtins.formatting.black,
        require("null-ls").builtins.formatting.trim_whitespace,
        require("null-ls").builtins.formatting.trim_newlines,
        require("null-ls").builtins.formatting.uncrustify,
    },
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    -- for nvim 0.8
                    vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
        end
    end,
})
