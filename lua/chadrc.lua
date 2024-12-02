-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = "dark_horizon",
    transparency = false,
}

M.ui = {
    cmp = {
        icons_left = true,
        format_colors = {
            tailwind = true,
        },
    },

    statusline = {
        enabled = true,
        theme = "vscode_colored",
    },

    telescope = {
        style = "bordered",
    },
}

M.nvdash = {
    load_on_startup = true,
}

return M
