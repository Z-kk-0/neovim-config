vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.java",
    callback = function()
        local file = vim.fn.expand("%:t:r")
        local pkg = vim.fn.expand("%:h"):gsub("/", ".")
        if pkg == "." then pkg = "your.package.name" end

        local content = {
            "package " .. pkg .. ";",
            "",
            "public class " .. file .. " {",
            "    ",
            "}"
        }
        vim.api.nvim_buf_set_lines(0, 0, -1, false, content)
        vim.api.nvim_win_set_cursor(0, { 4, 5 })
    end
})
