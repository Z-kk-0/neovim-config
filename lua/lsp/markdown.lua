local lspconfig = require("lspconfig")
local caps      = require("cmp_nvim_lsp").default_capabilities()

lspconfig.marksman.setup { capabilities = caps }
