vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n" , "<leader><leader>n", ":tabedit<CR>" , opts)
keymap("n" , "<leader><leader>q", ":tabclose<CR>" , opts)
keymap("n" , "<leader>h", "gT" , opts)
keymap("n" , "<leader>l", "gt" , opts)
keymap("n" , "<c-Up>", ":resize -1<CR>" , opts)
keymap("n" , "<c-Down>", ":resize +1<CR>" , opts)
keymap("n" , "<c-left>", ":vertical resize +1<CR>" , opts)
keymap("n" , "<c-right>", ":vertical resize -1<CR>" , opts)
keymap("n" , "<c-PageUp>", ":bp<CR>" , opts)
keymap("n" , "<c-PageDown>", ":bn<CR>" , opts)
keymap("n" , "<leader>t", ":ToggleTerm<CR>" , opts)
keymap("n" , "<leader>i", ":call CocAction('format')<CR>" , opts)
keymap("n" , "<leader>e", ":NvimTreeToggle<CR>" , opts)
keymap("n" , "<leader>c", ":bw<CR>" , opts)


