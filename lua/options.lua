require "nvchad.options"

local opt = vim.opt

-- Global options
opt.relativenumber = true
opt.cursorlineopt = 'both'

opt.wrap = false
opt.breakindent = true

-- Default tab size to 4
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4

-- Specific file types with different tab size
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "javascript", "typescript", "javascriptreact", "typescriptreact", "html", "css" },
    callback = function ()
        vim.opt_local.shiftwidth = 2
        vim.opt_local.tabstop = 2
        vim.opt_local.softtabstop = 2
    end
})
