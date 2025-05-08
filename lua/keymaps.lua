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
map('n', '<M-j>', ':lua require("theme").set_light()<CR>')
map('n', '<M-k>', ':lua require("theme").set_dark()<CR>')
map('n', '<M-l>', ':lua require("theme").set_kde()<CR>')

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
