vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.o.background = "light"
vim.g.colors_name = "miles_light"

-- Base Editor
vim.api.nvim_set_hl(0, "Normal", { fg = "#222222", bg = "#f5f5f5" })
vim.api.nvim_set_hl(0, "NormalNC", { fg = "#444444", bg = "#f5f5f5" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#eeeeee" })
vim.api.nvim_set_hl(0, "Visual", { bg = "#ffdada" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#bbbbbb" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#d90429" })
vim.api.nvim_set_hl(0, "VertSplit", { fg = "#cccccc" })
vim.api.nvim_set_hl(0, "StatusLine", { fg = "#ffffff", bg = "#d90429" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "#eeeeee", fg = "#111111" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#d90429", fg = "#ffffff" })

-- Syntax (TreeSitter)
vim.api.nvim_set_hl(0, "@function", { fg = "#d90429", italic = true })
vim.api.nvim_set_hl(0, "@variable", { fg = "#111111" })
vim.api.nvim_set_hl(0, "@parameter", { fg = "#9d0208" })
vim.api.nvim_set_hl(0, "@string", { fg = "#9d0208" })
vim.api.nvim_set_hl(0, "@keyword", { fg = "#d90429", bold = true })
vim.api.nvim_set_hl(0, "@type", { fg = "#e85d04" })
vim.api.nvim_set_hl(0, "@constant", { fg = "#b30000" })
vim.api.nvim_set_hl(0, "@comment", { fg = "#888888", italic = true })

-- File Tree (nvim-tree)
vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#d90429" })
vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#d90429" })
vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = "#cccccc" })
vim.api.nvim_set_hl(0, "NvimTreeNormal", { fg = "#222222", bg = "#f5f5f5" })

-- Telescope
vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#d90429", bg = "#f5f5f5" })
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#d90429", bg = "#f5f5f5" })
vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = "#d90429", bg = "#f5f5f5" })
vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "#d90429", bg = "#f5f5f5" })
vim.api.nvim_set_hl(0, "TelescopeNormal", { fg = "#222222", bg = "#f5f5f5" })

-- LSP + Diagnostics
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#d90429" })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#ffaa00" })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#888888" })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#666666" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#ffffff", fg = "#222222" })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#d90429", bg = "#ffffff" })
vim.api.nvim_set_hl(0, "LspInfoBorder", { fg = "#d90429", bg = "#ffffff" })
vim.api.nvim_set_hl(0, "LspCodeLens", { fg = "#999999", italic = true })

-- CMP (nvim-cmp)
vim.api.nvim_set_hl(0, "CmpItemAbbr", { fg = "#444444" })
vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#d90429", bold = true })
vim.api.nvim_set_hl(0, "CmpItemKind", { fg = "#9d0208" })

-- GitSigns
vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#00aa00" })
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#ffaa00" })
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#d90429" })

-- Treesitter Context
vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "#eeeeee" })

-- Cursor
vim.api.nvim_set_hl(0, "Cursor", { bg = "#d90429", fg = "#ffffff" })
