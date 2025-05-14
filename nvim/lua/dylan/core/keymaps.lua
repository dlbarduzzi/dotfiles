vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap

map.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
map.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Numbers.
map.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
map.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- Window splits.
map.set("n", "<leader>ss", "<C-w>v", { desc = "Split window vertically" })
map.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
map.set("n", "<leader>se", "<C-w>=", { desc = "Make splitted windows same size" })
map.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Tabs.
map.set("n", "<leader>tt", "<cmd>tabnew<CR>", { desc = "Open new tab" })
map.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close tab" })
map.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
map.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to prev tab" })
map.set("n", "<leader>tb", "<cmd>tabnew %<CR>", { desc = "Open current buffer in a new tab" })
