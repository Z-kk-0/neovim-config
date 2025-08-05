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

