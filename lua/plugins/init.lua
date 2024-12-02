return {
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        config = function()
            require "configs.conform"
        end,
    },

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
                "jdtls",                      -- Java
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
                "json",
                "c", "cpp",
                "c_sharp",
                "python", "htmldjango",
                "java",
                "markdown",
                "regex",
                "sql",
            },
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
                disable = { "tsx" },
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

    {
        "windwp/nvim-ts-autotag",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require('nvim-ts-autotag').setup()
        end,
    },
}
