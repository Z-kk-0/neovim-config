local mason           = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig       = require("lspconfig")
local cmp_caps        = require("cmp_nvim_lsp").default_capabilities()

mason.setup()

mason_lspconfig.setup({
  ensure_installed = { "clangd", "rust_analyzer", "csharp_ls" },
  -- API-Change: automatic_installation ist jetzt ein TABLE, nicht mehr bool
  automatic_installation = { exclude = {} },
})

-- Handler-Magie: jeder installierte Server bekommt dieselben Capabilities
mason_lspconfig.setup_handlers({
  function(server)
    lspconfig[server].setup({ capabilities = cmp_caps })
  end,
})

-- Extra-Server mit eigener Config
require("lsp.c")       -- clangd-Feinschliff
require("lsp.rust")    -- bleibt wie gehabt
require("lsp.csharp")  -- bleibt wie gehabt
