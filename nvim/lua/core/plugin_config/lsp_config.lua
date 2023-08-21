require("mason").setup()
require("mason-lspconfig").setup()

require("lspsaga").setup({
  code_action_icon = "💡",
  symbol_in_winbar = {
    in_custom = false,
    enable = true,
    separator = ' › ',
    show_file = true,
    file_formatter = ""
  },
})

local lspconfig = require('lspconfig')

-- Define an on_attach function to set up keybindings
local on_attach = function(_, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local opts = { noremap=true, silent=true }

  -- Define keybindings for LSP functions
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', 'gr', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
end

-- Solargraph for Ruby
lspconfig.solargraph.setup {
  filetypes = { 'ruby' },
  settings = {
    solargraph = {
      diagnostics = true
    }
  },
  on_attach = on_attach
}

-- ESLint for JavaScript
lspconfig.eslint.setup {
  filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
  on_attach = on_attach
}

-- Lua language server
lspconfig.lua_ls.setup {
  filetypes = { 'lua' },
  on_attach = on_attach
}

-- JSON language server
lspconfig.jsonls.setup {
  filetypes = { 'json' },
  on_attach = on_attach
}

-- add binding to launch terminal
vim.keymap.set('n', '\\t', ':Lspsaga term_toggle<CR>')
