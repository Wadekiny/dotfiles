
local dap, dapui = require("dap"), require("dapui")

dap.adapters.python = {
  type = 'executable';
  --command = 'python';
  --command = os.getenv('HOME') .. '/.virtualenvs/tools/bin/python';
  command = 'python3';

  args = { '-m', 'debugpy.adapter' };
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




dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end


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
              layouts = {
                --{
                --  elements = {
                --    { id = "scopes", size = 0.25 },
                --    "breakpoints",
                --    "stacks",
                --    "watches",
                --    "repl"
                --    "console",
                --  },
                --  --size = 20, 
                --  size = 0.3, 
                --  --position = "left",
                --  position = "right",
                --},
                {
                  elements = {
                    "repl",
                  },
                  size = 0.3,
                  position = "right",
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
