-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.colorcolumn = "120"
vim.g.autoformat = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.wrap = true
vim.g.root_spec = {
    { ".git", 'lua'},
    'cwd'
}
vim.opt.guifont = {
    "FiraCode Nerd Font", ":h12",
}
vim.api.nvim_set_keymap("v", "<sc-c>", '"+y', { noremap = true }) -- Select line(s) in visual mode and copy (CTRL+Shift+V)
vim.api.nvim_set_keymap("i", "<sc-v>", '<ESC>"+p', { noremap = true }) -- Paste in insert mode (CTRL+Shift+C)
vim.api.nvim_set_keymap("n", "<sc-v>", '"+p', { noremap = true }) -- Paste in normal mode (CTRL+Shift+C)
