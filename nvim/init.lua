-- ~/.config/nvim/init.lua
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')
vim.cmd("source ~/.vimrc")

-- Mylo language support
require("mylo")
-- Lazy
require("config.lazy")
