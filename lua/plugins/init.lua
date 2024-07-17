return {
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        config = function()
            require "configs.conform"
        end,
    },

    -- These are some examples, uncomment them if you want to see them work!
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require "configs.lspconfig"
        end,
    },

    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server",        -- Lua
                "stylua",                     -- Lua formatter
                "html-lsp",                   -- HTML
                "css-lsp",                    -- CSS
                "prettier",                   -- Prettier
                "typescript-language-server", -- TypeScript and JavaScript
                "pyright",                    -- Python
                "omnisharp",                  -- C#
                "clangd",                     -- C, C++
                "json-lsp",                   -- JSON
                "yaml-language-server",       -- YAML
                "marksman",                   -- Markdown
            },
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim", "lua", "vimdoc",
                "html", "css",
                "javascript", "typescript", "tsx",
                "c", "cpp",
                "c_sharp",
                "python", "htmldjango",
                "markdown",
            },
        },
    },

    {
        "nvim-tree/nvim-tree.lua",
        opts = {
            view = {
                adaptive_size = true,
            },
        },
    },
}
