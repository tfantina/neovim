vim.keymap.set("n", " ", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w",  ':w<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bn", '<cmd>bnext<CR>')
vim.keymap.set("n", "<leader>bp", '<cmd>bprevious<CR>')
vim.keymap.set("n", "<leader>bd", '<cmd>bdelete<CR>')
