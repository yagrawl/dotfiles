-- Run the current file with rspec
vim.api.nvim_set_keymap('n', '\\rb', [[:call VimuxRunCommand("clear; rspec " . expand("%"))<CR>]], { noremap = true, silent = true })

-- Run command without sending a return
vim.api.nvim_set_keymap('n', '\\rq', [[:call VimuxRunCommand("clear; rspec " . expand("%"), 0)<CR>]], { noremap = true, silent = true })

