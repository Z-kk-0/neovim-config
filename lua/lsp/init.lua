local mason           = require("mason")
local lspconfig       = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")

mason.setup()

mason_lspconfig.setup({
  ensure_installed = { "clangd", "rust_analyzer", "csharp_ls" },
  automatic_installation = true,
})

require("lsp.rust")
require("lsp.csharp")
require("lsp.c")    
