local term = require("toggleterm")
term.setup({
  open_mapping = [[<c-\>]],
  shade_terminals = true, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
  shading_factor = 3, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
  persist_size = true,
  persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
  --direction = 'vertical' | 'horizontal' | 'tab' | 'float',
  direction = 'horizontal',
  close_on_exit = true, -- close the terminal window when the process exits
  auto_scroll = true, -- automatically scroll to the bottom on terminal output
   winbar = {
    enabled = false,
    name_formatter = function(term) --  term: Terminal
      return term.name
    end
  },
    highlights = {
    -- highlights which map to a highlight group name and a table of it's values
    -- NOTE: this is only a subset of values, any group placed here will be set for the terminal window split
    -- Normal = {
    --  guibg = "#222222",
    -- },
    -- NormalFloat = {
    --  link = '#222222'
    -- },
    -- FloatBorder = {
    --  guifg = "#222222",
    --  guibg = "#222222",
    -- },
    },
})
