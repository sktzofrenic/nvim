-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("n", "<Leader>u", ":UndotreeToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "n",
  "<C-e>",
  ":lua require('harpoon.ui').toggle_quick_menu()<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<Leader>a",
  ":lua require('harpoon.mark').add_file()<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<Leader>gh", ":DiffviewFileHistory %<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "]g", ":cn<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "[g", ":cp<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>h", ":nohl<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-q>", ":cope<CR>", { noremap = true, silent = true })

