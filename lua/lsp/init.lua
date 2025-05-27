local mason           = require("mason")
local lspconfig       = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")

mason.setup()


-- Server-spezifische Configs
require("lsp.rust")
require("lsp.csharp")
require("lsp.c")
require("lsp.web") 
require("lsp.markdown")  
require("lsp.java")  
