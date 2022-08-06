
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
                {
                  elements = {
                    { id = "scopes", size = 0.25 },
                    "breakpoints",
                    "stacks",
                    "watches",
                  },
                  size = 40, 
                  position = "left",
                },
                {
                  elements = {
--       "console",
                    "repl",
                  },
                  size = 0.3, 
                  position = "bottom",
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

