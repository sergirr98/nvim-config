return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {
                "angular",
                "c_sharp",
                "css",
                "csv",
                "dart",
                "dockerfile",
                "elixir",
                "erlang",
                "git_config",
                "git_rebase",
                "gitattributes",
                "gitcommit",
                "gitignore",
                "html",
                "http",
                "javascript",
                "json",
                "lua",
                "python",
                "regex",
                "scss",
                "sql",
                "typescript",
                "vim",
                "vimdoc",
                "xml",
                "yaml",
            },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
