local theme = require("theme")

local function map(mode, lhs, rhs, opts)
    opts = opts or {}
    local options = vim.tbl_extend("force", { noremap = true, silent = true }, opts)
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-- File Tree
map('n', '<C-n>', ':NvimTreeToggle<CR>')

-- Terminal
map('n', '<C-t>', ':ToggleTerm<CR>')

-- Themes (ALT + JKL → stabil)
map('n', '<M-j>', ':lua require("theme").set_miles_light()<CR>')
map('n', '<M-k>', ':lua require("theme").set_miles()<CR>')
map('n', '<M-l>', ':lua require("theme").set_kde()<CR>')
map('n', '<M-h>', ':lua require("theme").set_githublight()<CR>')


-- Window navigation
map('n', '<Tab>', '<C-w>w')
map('n', '<S-Tab>', '<C-w>W')

-- Clipboard
map("v", "<C-c>", '"+y')
map("n", "<C-v>", '"+p')
map("v", "<C-v>", '"+p')
map("i", "<C-v>", '<C-r>+')
map("v", "<C-x>", '"+d')

-- Save
map("n", "<C-s>", ":w<CR>")
map("i", "<C-s>", "<Esc>:w<CR>i")
map("v", "<C-s>", "<Esc>:w<CR>")

-- Buffers (CTRL + Arrow)
map("n", "<C-Right>", ":BufferLineCycleNext<CR>")
map("n", "<C-Left>", ":BufferLineCyclePrev<CR>")

-- Undo / Redo
map("n", "<C-z>", "u")
map("i", "<C-z>", "<Esc>ui")
map("v", "<C-z>", "u")

map("n", "<C-y>", "<C-r>")
map("i", "<C-y>", "<C-o><C-r>")
map("v", "<C-y>", "<C-r>")

-- Select All
map("n", "<C-a>", "ggVG")
map("i", "<C-a>", "<Esc>ggVG")
map("v", "<C-a>", "<Esc>ggVG")

---Neogit
map("n", "<C-g>", ":Neogit<CR>")

--- Markdown preview
map('n', '<M-m>', ':MarkdownPreviewToggle<CR>', { desc = 'Markdown Preview' })

--- Quick Fix
vim.keymap.set({ "n", "v" }, "<A-q>",
    vim.lsp.buf.code_action,
    { desc = "Quick Fix" })

-- CoC Code-Action für Cursor / Auswahl
vim.keymap.set({ "n", "v" }, "<A-q>a", "<Plug>(coc-codeaction-selected)",
    { silent = true, noremap = false, desc = "CoC Code Action" })
-- CoC Diagnostic-Fix (z. B. Organize Imports) optional
vim.keymap.set("n", "<A-q>d", "<Plug>(coc-fix-current)",
    { silent = true, noremap = false, desc = "CoC Fix Current" })



-- CoC Mappings
vim.keymap.set('n', '<leader>rn', '<Plug>(coc-rename)', { silent = true })
vim.keymap.set('n', '<M-CR>', '<Plug>(coc-codeaction)', { silent = true })
vim.keymap.set('n', 'gd', '<Plug>(coc-definition)', { silent = true })
vim.keymap.set('n', 'gy', '<Plug>(coc-type-definition)', { silent = true })
vim.keymap.set('n', 'gi', '<Plug>(coc-implementation)', { silent = true })
vim.keymap.set('n', 'gr', '<Plug>(coc-references)', { silent = true })
vim.keymap.set('n', 'K', ':call CocActionAsync("doHover")<CR>', { silent = true })
vim.keymap.set('n', '[g', '<Plug>(coc-diagnostic-prev)', { silent = true })
vim.keymap.set('n', ']g', '<Plug>(coc-diagnostic-next)', { silent = true })
vim.keymap.set('n', '<M-q>', ':copen<CR>', { silent = true }) -- Quickfix alt-q
--Use <CR> to confirm completion or insert newline
vim.keymap.set("i", "<CR>", [[pumvisible() ? coc#_select_confirm() : "\<CR>"]],
    { noremap = true, silent = true, expr = true })
