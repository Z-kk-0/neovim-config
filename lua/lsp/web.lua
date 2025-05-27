local lspconfig = require("lspconfig")
local caps      = require("cmp_nvim_lsp").default_capabilities()

-- TypeScript / React
lspconfig.tsserver.setup { capabilities = caps }

-- ESLint (falls du eslint_d global hast)
lspconfig.eslint.setup   { capabilities = caps }
