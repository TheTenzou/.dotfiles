require'dap-go'.setup {
  -- Additional dap configurations can be added.
  -- dap_configurations accepts a list of tables where each entry
  -- represents a dap configuration. For more details do:
  -- :help dap-configuration
  dap_configurations = {
    {
      -- Must be "go" or it will be ignored by the plugin
      type = "go",
      name = "Attach remote",
      mode = "remote",
      request = "attach",
    },
  },

  -- delve configurations
  delve = {
    -- time to wait for delve to initialize the debug session.
    -- default to 20 seconds
    initialize_timeout_sec = 20,
    -- a string that defines the port to start delve debugger.
    -- default to string "${port}" which instructs nvim-dap
    -- to start the process in a random available port
    port = "${port}"
  },
}

vim.keymap.set("n", "<leader>dc", ":lua require'dap'.continue()<CR>", {silent = true})
vim.keymap.set("n", "<leader>dn", ":lua require'dap'.step_over()<CR>", {silent = true})
vim.keymap.set("n", "<A-n>", ":lua require'dap'.step_over()<CR>", {silent = true})
vim.keymap.set("n", "<leader>di", ":lua require'dap'.step_into()<CR>", {silent = true})
vim.keymap.set("n", "<leader>do", ":lua require'dap'.step_out()<CR>", {silent = true})
vim.keymap.set("n", "<leader>dx", ":lua require'dap'.terminate()<CR>", {silent = true})
vim.keymap.set("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>", {silent = true})
vim.keymap.set("n", "<leader>dB", ":lua require'dap'.set_breakpoint(vim.fn.input('Breackpoint condition: '))<CR>", {silent = true})
--vim.keymap.set("n", "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>", {silent = true})
vim.keymap.set("n", "<leader>dt", ":lua require('dap-go').debug_test()<CR>", {silent = true})

require'dapui'.setup()
require'nvim-dap-virtual-text'.setup()

local dap, dapui = require 'dap', require 'dapui'
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_initialized["dapui_config"] = function()
    dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end

local sign = vim.fn.sign_define

sign("DapBreakpoint", { text = "●", texthl = "DapBreakpoint", linehl = "", numhl = ""})
sign("DapBreakpointCondition", { text = "●", texthl = "DapBreakpointCondition", linehl = "", numhl = ""})
sign("DapLogPoint", { text = "◆", texthl = "DapLogPoint", linehl = "", numhl = ""})
