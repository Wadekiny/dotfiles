
local dap, dapui = require("dap"), require("dapui")

dap.adapters.python = {
  type = 'executable';
  command = 'python3';
  args = { '-m', 'debugpy.adapter' };
}

dap.adapters.cppdbg = {
    id = 'cppdbg',
    type = 'executable',
    command = '/home/wadekiny/ProgramFiles/vscode-cpptools/extension/debugAdapters/bin/OpenDebugAD7'
}

dap.configurations.python = {
  {
	type = 'python';
	request = 'launch';
    justMyCode = false;
	name = "Launch file";
	program = "${file}";
	pythonPath = function()
	  return 'python3'
	end;
  },
}

dap.configurations.cpp = {
  {
    name = "This",
    type = "cppdbg",
    request = "launch",
    -- program = "${file}",
    program = function()
        return string.gsub(vim.fn.expand("%:p"),"%.cpp","%.out")
    end,
    cwd = '${workspaceFolder}',
    stopAtEntry = true,
  },
  -- {
  --   name = "Launch file",
  --   type = "cppdbg",
  --   request = "launch",
  --   program = function()
  --     return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
  --   end,
  --   cwd = '${workspaceFolder}',
  --   stopAtEntry = true,
  -- },
  -- {
  --   name = 'Attach to gdbserver :1234',
  --   type = 'cppdbg',
  --   request = 'launch',
  --   MIMode = 'gdb',
  --   miDebuggerServerAddress = 'localhost:1234',
  --   miDebuggerPath = '/usr/bin/gdb',
  --   cwd = '${workspaceFolder}',
  --   program = function()
  --     return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
  --   end,
  -- },
}



dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
  vim.api.nvim_command("DapVirtualTextEnable")
  vim.api.nvim_command("NvimTreeClose")
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
  vim.api.nvim_command("DapVirtualTextDisable")
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
  vim.api.nvim_command("DapVirtualTextDisable")
end

dap.listeners.before.disconnect["dapui_config"] = function()
  dapui.close()
  vim.api.nvim_command("DapVirtualTextDisable")
end






-- nvim-dap uses five signs:
--
-- - `DapBreakpoint` for breakpoints (default: `B`)
-- - `DapBreakpointCondition` for conditional breakpoints (default: `C`)
-- - `DapLogPoint` for log points (default: `L`)
-- - `DapStopped` to indicate where the debugee is stopped (default: `→`)
-- - `DapBreakpointRejected` to indicate breakpoints rejected by the debug
--   adapter (default: `R`)
--
-- You can customize the signs by setting them with the |sign_define()| function.
-- For example:
--
--  
-- >lua
--   vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})


vim.fn.sign_define("DapBreakpoint", {text=''})
vim.fn.sign_define("DapStopped", {text=''}) --去掉符号，不然在运行到断点时会覆盖断点符号
vim.fn.sign_define("DapBreakpointCondition", {text=''}) --去掉符号，不然在运行到断点时会覆盖断点符号

require("dapui").setup({
              icons = { expanded = "", collapsed = "" },
              mappings = {
                expand = { "<CR>", "<2-LeftMouse>" },
                open = "o",
                remove = "d",
                edit = "e",
                repl = "r",
                toggle = "t",
              },
              expand_lines = vim.fn.has("nvim-0.7"),
              console = "integratedTerminal",
                layouts = {
                    {
                      elements = {
                      -- Elements can be strings or table with id and size keys.
                        { id = "scopes", size = 0.25 },
                        "breakpoints",
                        "stacks",
                        "watches",
                      },
                      size = 40, -- 40 columns
                      position = "left",
                    },
                    {
                      elements = {
                        "repl",
                        "console",
                      },
                      size = 0.25, -- 25% of total lines
                      position = "bottom",
                    },
                  },
                  controls = {
                    -- Requires Neovim nightly (or 0.8 when released)
                    enabled = true,
                    -- Display controls in this element
                    element = "repl",
                    icons = {
                      pause = "",
                      play = "",
                      step_into = "",
                      step_over = "",
                      step_out = "",
                      step_back = "",
                      run_last = "",
                      terminate = "",
                    },
                  },

              floating = {
                max_height = nil,
                max_width = nil,
                border = "single",
                mappings = {
                  close = { "q", "<Esc>" },
                },
              },
              windows = { indent = 1 },
              render = {
                max_type_length = nil,
              }
            })




require("nvim-dap-virtual-text").setup {
    enabled = true,                        -- enable this plugin (the default)
    enabled_commands = true,               -- create commands DapVirtualTextEnable, DapVirtualTextDisable, DapVirtualTextToggle, (DapVirtualTextForceRefresh for refreshing when debug adapter did not notify its termination)
    highlight_changed_variables = true,    -- highlight changed values with NvimDapVirtualTextChanged, else always NvimDapVirtualText
    highlight_new_as_changed = false,      -- highlight new variables in the same way as changed variables (if highlight_changed_variables)
    show_stop_reason = true,               -- show stop reason when stopped for exceptions
    commented = false,                     -- prefix virtual text with comment string
    only_first_definition = false,          -- only show virtual text at first definition (if there are multiple)
    all_references = false,                -- show virtual text on all all references of the variable (not only definitions)
    filter_references_pattern = '<module', -- filter references (not definitions) pattern when all_references is activated (Lua gmatch pattern, default filters out Python modules)
    -- experimental features:
    virt_text_pos = 'eol',                 -- position of virtual text, see `:h nvim_buf_set_extmark()`
    all_frames = false,                    -- show virtual text for all stack frames not only current. Only works for debugpy on my machine.
    virt_lines = false,                    -- show virtual lines instead of virtual text (will flicker!)
    virt_text_win_col = nil                -- position the virtual text at a fixed window column (starting from the first text column) ,
                                           -- e.g. 80 to position at column 80, see `:h nvim_buf_set_extmark()`
}
