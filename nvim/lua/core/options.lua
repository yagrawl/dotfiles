local opt = vim.opt

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

opt.backspace = '2'
opt.showcmd = true
opt.laststatus = 2
opt.autowrite = true
opt.cursorline = true
opt.autoread = true

-- use spaces for tabs
opt.tabstop = 2
opt.shiftwidth = 2
opt.shiftround = true
opt.expandtab = true

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

vim.cmd [[ set noswapfile ]]

--Line numbers
vim.wo.number = true

-- Exit out of vim if NvimTree is the only window left
vim.cmd [[
  autocmd BufEnter * if (winnr("$") == 1 && &filetype == "NvimTree") | q | endif
]]
