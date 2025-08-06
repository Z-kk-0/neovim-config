local dap = require("dap")
local dapui = require("dapui")

local is_windows = vim.loop.os_uname().sysname:find("Windows") ~= nil

local netcoredbg_path = is_windows
    and "C:\\tools\\netcoredbg\\netcoredbg.exe"
    or "/home/USERNAME/.local/bin/netcoredbg/netcoredbg"
dap.adapters.coreclr = {
    type = 'executable',
    command = '/home/zer0/.local/bin/netcoredbg/netcoredbg',
    args = { '--interpreter=vscode' }
}

dap.configurations.cs = {
    {
        type = "coreclr",
        name = "Launch - NetcoreDbg",
        request = "launch",
        program = function()
            return vim.fn.input("Pfad zur DLL: ", vim.fn.getcwd() .. "/bin/Debug/", "file")
        end,
    },
}

require("dapui").setup()
require("nvim-dap-virtual-text").setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end
-- Versucht automatisch die erste gefundene DLL
program = function()
    local default = vim.fn.getcwd() .. "/bin/Debug/"
    local handle = io.popen('find "' .. default .. '" -type f -name "*.dll"')
    local result = handle:read("*a")
    handle:close()
    return vim.fn.input("Pfad zur DLL: ", result:match("[^\r\n]+") or default, "file")
end
