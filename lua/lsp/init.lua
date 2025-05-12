local mason           = require("mason")
local lspconfig       = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")

mason.setup()

-- Installiert/updated Server automatisch (clangd, rust-analyzer, roslyn)
mason_lspconfig.setup({
  ensure_installed = { "clangd", "rust_analyzer", "csharp_ls" },
  automatic_installation = true,
})

-- Server-spezifische Configs
require("lsp.rust")
require("lsp.csharp")
require("lsp.c")      --  ⇦ neu
