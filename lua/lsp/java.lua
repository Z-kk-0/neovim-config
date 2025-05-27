vim.api.nvim_create_autocmd("FileType", {
  pattern  = "java",
  callback = function()
    local jdtls = require("jdtls")
    local caps  = require("cmp_nvim_lsp").default_capabilities()

    -- Workspace-Ordner pro Projekt
    local ws_dir = vim.fn.stdpath("data") .. "/jdtls-workspaces/"
                 .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

    -- Root anhand Git/Maven/Gradle ermitteln
    local root = require("jdtls.setup").find_root({
      ".git","mvnw","gradlew","pom.xml","build.gradle",
    })

    jdtls.start_or_attach({
      cmd         = { "jdtls", "-data", ws_dir },
      root_dir    = root,
      capabilities = caps,
    })
  end,
})
