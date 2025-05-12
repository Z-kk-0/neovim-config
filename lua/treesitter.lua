require("nvim-treesitter.configs").setup({
  ensure_installed = { "c", "cpp", "lua", "rust", "vim", "query", "bash", "python" },
  highlight = { enable = true },
  indent     = { enable = true },
})
