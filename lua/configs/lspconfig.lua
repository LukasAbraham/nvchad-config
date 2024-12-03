local configs = require "nvchad.configs.lspconfig"

local servers = {
    html = {},
    cssls = {},
    ts_ls = {},
    angularls = {},
    clangd = {},
    pyright = {},
    jsonls = {},
    yamlls = {},
    marksman = {},
    jdtls = {},
    omnisharp = {
        cmd = {
            "dotnet",
            vim.fn.stdpath('config') .. "-data\\mason\\packages\\omnisharp\\libexec\\OmniSharp.dll"
        },
    },
    tailwindcss = {},
    dockerls = {},
}

for name, opts in pairs(servers) do
    opts.on_init = configs.on_init
    opts.on_attach = configs.on_attach
    opts.capabilities = configs.capabilities

    require("lspconfig")[name].setup(opts)
end
