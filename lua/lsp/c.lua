-- C-/C++-LSP via clangd
local lspconfig        = require("lspconfig")
local cmp_capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.clangd.setup({
  capabilities = cmp_capabilities,
  cmd = { "clangd", "--offset-encoding=utf-16" }, -- vermeidet Off-by-2-Warnungen
  init_options = {
    clangdFileStatus = true,  -- zeigt aktuellen Datei-Status in der Status-Line an
  },
})
