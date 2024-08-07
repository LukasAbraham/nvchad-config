require "nvchad.mappings"

local utils = require("configs.utils")
local map = vim.keymap.set

map("i", "jk", "<ESC>")

map("n", "<C-d>", "<C-d>zz", { desc = "Scroll half page down" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll half page up" })
map("n", "<leader>tt", utils.toggle_transparency, { desc = "Toggle transparency" })
map("n", "<leader>qa", utils.close_all_buffers, { desc = "Close all buffers" })

map("v", "<M-j>", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })
map("v", "<M-k>", ":m '<-2<CR>gv=gv", { desc = "Move lines up" })
-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
