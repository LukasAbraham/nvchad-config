require "nvchad.mappings"

local map = vim.keymap.set
local nomap = vim.keymap.del

-- Insert mode keymaps
map("i", "jk", "<ESC>", { desc = "escape insert mode (1)" })
map("i", "<C-c>", "<ESC>", { desc = "escape insert mode (2)" })
map("i", "<C-t>", function()
    require("cmp").complete()
end, { desc = "trigger code suggestions" })


-- Normal mode keymaps
-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<C-d>", "<C-d>zz", { desc = "scroll half page down" })
map("n", "<C-u>", "<C-u>zz", { desc = "scroll half page up" })
map("n", "<C-a>", "<cmd>%y+<CR>", { desc = "general copy whole file" })

map("n", "<leader>tt", function()
    require("base46").toggle_transparency()
end, { desc = "toggle transparency" })

map("n", "<leader>qs", function()
    require("nvchad.tabufline").closeAllBufs(false)
end, { desc = "close all buffers, excluding the current buf" })

map("n", "<leader>qa", function()
    require("nvchad.tabufline").closeAllBufs(true)
end, { desc = "close all buffers" })


-- Visual mode keymaps
map("v", "<M-j>", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })
map("v", "<M-k>", ":m '<-2<CR>gv=gv", { desc = "Move lines up" })


-- Remove default keymaps
nomap("n", "<C-c>")
