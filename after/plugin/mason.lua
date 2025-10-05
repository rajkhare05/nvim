require('mason').setup({})
require('mason-lspconfig').setup({
    handlers = {
        function(server_name)
            -- require('lspconfig')[server_name].setup({})
            vim.lsp.config.get_confg(server_name).setup({})
        end
    }
})

