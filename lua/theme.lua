local M = {}

function M.set_light()
    vim.opt.background = "light" -- honeywell is dark only, but we keep this for API
    vim.cmd("colorscheme honeywell")
end

function M.set_dark()
    vim.opt.background = "dark"
    vim.cmd("colorscheme honeywell")
end

function M.set_kde()
    vim.opt.background = "dark"
    vim.cmd("colorscheme tokyonight")
end

function M.set_githublight()
    vim.opt.background = "light"
    require("github-theme").setup({
        options = {
            styles = {
                comments = "italic",
                functions = "bold",
                keywords = "NONE",
                variables = "NONE"
            }
        }
    })
    vim.cmd("colorscheme github_light")
end

function M.set_miles()
    vim.cmd("color miles")
end

function M.set_miles_light()
    vim.cmd("color miles_light")
end

return M
