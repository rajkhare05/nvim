require('nvim-treesitter').setup {
  ensure_installed = { "go", "c", "cpp", "lua", "vim", "query", "rust", "javascript", "typescript" },
  auto_install = true,
  highlight = { enable = true },
}

