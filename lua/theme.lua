local M = {}

local function disable_transparency()
  vim.cmd [[
  augroup TransparentBackground
    autocmd!
  augroup END
  ]]
end

local function enable_transparency()
  vim.cmd [[
  augroup TransparentBackground
    autocmd!
    autocmd ColorScheme * highlight Normal ctermbg=none guibg=none
    autocmd ColorScheme * highlight NormalNC ctermbg=none guibg=none
    autocmd ColorScheme * highlight VertSplit ctermbg=none guibg=none
  augroup END
  ]]
end

function M.set_light()
  disable_transparency()
  vim.opt.background = "light"
  vim.cmd("colorscheme gruvbox")
end

function M.set_dark()
  disable_transparency()
  vim.opt.background = "dark"
  vim.cmd("colorscheme gruvbox")
end

function M.set_kde()
  disable_transparency()
  vim.opt.background = "dark"
  vim.cmd("colorscheme tokyonight")
end

return M
