local M = {}

function M.toggle_transparency()
    require("base46").toggle_transparency()
end

function M.toggle_theme()
    require("base46").toggle_theme()
end

function M.close_all_buffers()
    require("nvchad.tabufline").closeAllBufs()
end

return M
