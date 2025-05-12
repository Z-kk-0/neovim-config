local lspconfig        = require("lspconfig")
local cmp_capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.clangd.setup({
  capabilities = cmp_capabilities,
  cmd = { "clangd", "--offset-encoding=utf-16" },
  init_options = {
    clangdFileStatus = true,  
  },
})
