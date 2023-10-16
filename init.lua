-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.user_emmet_install_global = 0
vim.cmd("autocmd FileType html,css,blade.php EmmetInstall")


-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
require("devx")
