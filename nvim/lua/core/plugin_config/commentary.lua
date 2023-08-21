-- Map /cc to comment or uncomment the current line
vim.api.nvim_set_keymap('n', '/cc', ':Commentary<CR>', { noremap = true, silent = true })

-- Map /cc in visual mode to comment or uncomment the selected lines
vim.api.nvim_set_keymap('v', '/cc', ':Commentary<CR>', { noremap = true, silent = true })

