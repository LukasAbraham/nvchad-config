require "nvchad.mappings"

-- add yours here
local utils = require("configs.utils")

local map = vim.keymap.set

map("i", "jk", "<ESC>")
map("n", "<leader>tt", utils.toggle_transparency)

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
