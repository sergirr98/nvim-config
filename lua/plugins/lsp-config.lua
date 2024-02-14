return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "angularls",
                    "csharp_ls",
                    "omnisharp",
                    "cssls",
                    "cssmodules_ls",
                    "dockerls",
                    "docker_compose_language_service",
                    "eslint",
                    "elixirls",
                    "html",
                    "jsonls",
                    "tsserver",
                    "sqlls",
                    "tailwindcss",
                    "pyright",
                    "yamlls",
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.angularls.setup({})
            lspconfig.csharp_ls.setup({})
            lspconfig.omnisharp.setup({})
            lspconfig.cssls.setup({})
            lspconfig.cssmodules_ls.setup({})
            lspconfig.dockerls.setup({})
            lspconfig.docker_compose_language_service.setup({})
            lspconfig.eslint.setup({})
            lspconfig.elixirls.setup({})
            lspconfig.html.setup({})
            lspconfig.jsonls.setup({})
            lspconfig.tsserver.setup({})
            lspconfig.sqlls.setup({})
            lspconfig.tailwindcss.setup({})
            lspconfig.pyright.setup({})
            lspconfig.yamlls.setup({})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
