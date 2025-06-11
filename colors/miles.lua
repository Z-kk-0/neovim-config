vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.o.background = "dark"
vim.g.colors_name = "miles"

-- Basic Editor
vim.api.nvim_set_hl(0, "Normal", { fg = "#cccccc", bg = "#0a0a0a" })
vim.api.nvim_set_hl(0, "NormalNC", { fg = "#aaaaaa", bg = "#0a0a0a" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#111111" })
vim.api.nvim_set_hl(0, "Visual", { bg = "#220000" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#333333" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ff2a2a" })
vim.api.nvim_set_hl(0, "VertSplit", { fg = "#1a1a1a" })
vim.api.nvim_set_hl(0, "StatusLine", { fg = "#ffffff", bg = "#1a1a1a" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "#111111", fg = "#dddddd" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#ff2a2a", fg = "#0a0a0a" })

-- Syntax (TreeSitter)
vim.api.nvim_set_hl(0, "@keyword", { fg = "#ff2a2a", bold = true })
vim.api.nvim_set_hl(0, "@function", { fg = "#ff2a2a", italic = true })
vim.api.nvim_set_hl(0, "@variable", { fg = "#cccccc" })
vim.api.nvim_set_hl(0, "@parameter", { fg = "#ff6666" })
vim.api.nvim_set_hl(0, "@string", { fg = "#ff5555" })
vim.api.nvim_set_hl(0, "@type", { fg = "#ff4444" })
vim.api.nvim_set_hl(0, "@constant", { fg = "#ff3333" })
vim.api.nvim_set_hl(0, "@comment", { fg = "#555555", italic = true })

-- File Explorer (nvim-tree)
vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#ff2a2a" })
vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#ff2a2a" })
vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = "#444444" })
vim.api.nvim_set_hl(0, "NvimTreeNormal", { fg = "#cccccc", bg = "#0a0a0a" })

-- Telescope
vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#ff2a2a", bg = "#0a0a0a" })
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#ff2a2a", bg = "#0a0a0a" })
vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = "#ff2a2a", bg = "#0a0a0a" })
vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "#ff2a2a", bg = "#0a0a0a" })
vim.api.nvim_set_hl(0, "TelescopeNormal", { fg = "#cccccc", bg = "#0a0a0a" })

-- LSP + Diagnostics
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#ff2a2a" })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#ffaa00" })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#666666" })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#888888" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#111111", fg = "#cccccc" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#111111", fg = "#ff2a2a" })
vim.api.nvim_set_hl(0, "LspInfoBorder", { fg = "#ff2a2a", bg = "#111111" })
vim.api.nvim_set_hl(0, "LspCodeLens", { fg = "#777777", italic = true })

-- CMP (nvim-cmp)
vim.api.nvim_set_hl(0, "CmpItemAbbr", { fg = "#dddddd" })
vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#ff2a2a", bold = true })
vim.api.nvim_set_hl(0, "CmpItemKind", { fg = "#ff6666" })

-- GitSigns
vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#00aa00" })
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#ffaa00" })
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#ff2a2a" })

-- Treesitter Context
vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "#111111" })

-- Cursor
vim.api.nvim_set_hl(0, "Cursor", { bg = "#ff2a2a", fg = "#0a0a0a" })
