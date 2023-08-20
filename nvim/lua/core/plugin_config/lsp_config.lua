require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls" }
})

vim.keymap.set('n', '\\gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', '\\gi', vim.lsp.buf.implementation, {})

require("lspconfig").lua_ls.setup {}
