-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("n", "<Leader>uu", ":UndotreeToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>gh", ":DiffviewFileHistory %<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>qq", ":DiffviewClose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>hh", ":Telescope find_files hidden=true no_ignore=true<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "]g", ":cn<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "[g", ":cp<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>h", ":nohl<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-q>", ":cope<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "n", "nzz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "N", "Nzz", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>mc', ":lua MiniMap.close()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>mf', ":lua MiniMap.toggle_focus()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>mo', ":lua MiniMap.open()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>mr', ":lua MiniMap.refresh()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ms', ":lua MiniMap.toggle_side()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>mt', ":lua MiniMap.toggle()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-c>', "<cmd>noh<cr><esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-c>', "<cmd>noh<cr><esc>", { silent = true })
vim.api.nvim_set_keymap('i', '<F1>', '<Esc>', { noremap = true, silent = true })


vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false
})
vim.g.copilot_no_tab_map = true
