require("nvim-treesitter.configs").setup({
  ensure_installed = {
    -- bestehende
    "c","cpp","lua","rust","vim","query","bash","python",
    -- neu
    "markdown","markdown_inline",
    "javascript","typescript","tsx",
    "java",
  },
  highlight  = { enable = true },
  indent     = { enable = true },
  autotag    = { enable = true },             -- <tag></tag> auto-close
  context_commentstring = { enable = true },  -- // jsx comments
})

