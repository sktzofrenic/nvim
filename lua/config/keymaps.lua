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
vim.api.nvim_set_keymap("n", "<Leader>sl", ":Telescope resume<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>hh", ":Telescope find_files hidden=true no_ignore=true<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "]g", ":cn<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "[g", ":cp<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>h", ":nohl<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-q>", ":cope<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "n", "nzz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "N", "Nzz", { noremap = true, silent = true })

vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false
})
vim.g.copilot_no_tab_map = true
