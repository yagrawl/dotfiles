vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  ensure_installed = { "markdown", "markdown_inline" },
  view = {
    adaptive_size = true
  }
})

vim.keymap.set('n', '\\nt', ':NvimTreeFindFileToggle<CR>')
