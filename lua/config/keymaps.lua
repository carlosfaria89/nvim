-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- In visual mode, allows selected text to be moved top or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep yanked value even after pasting it over something
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Replace the all the words similar to the word on top of my cursor
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Ctrl c to be actually escape
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Disable Ctrl+z to prevent inadvertebly exiting nvim
vim.keymap.set("n", "<C-z>", "<nop>")

-- Use Ctrl+z in insert mode to undo changes
vim.keymap.set("i", "<C-z>", "<C-O>u")
