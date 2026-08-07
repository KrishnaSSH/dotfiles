vim.g.mapleader = " "

-- file navigator
vim.keymap.set("n", "<leader>e", ":Ex<CR>", { noremap = true, silent = true })

-- swap ; & :
vim.keymap.set({ 'n', 'v' }, ';', ':', { noremap = true })
vim.keymap.set({ 'n', 'v' }, ':', ';', { noremap = true })

-- J and K to move a selection up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

-- stay in visual mode after indenting
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and keep selection" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and keep selection" })

-- pressing escape clears the search highlights
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

-- switching between windows
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- switching between buffers
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "Delete current buffer" })

-- exit terminal
vim.keymap.set('t', '<Leader><Esc>', '<C-\\><C-n>', { silent = true })
