
local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  vim.notify("lualine not found!")
  return
end

local hide_in_width = function()
  return vim.fn.winwidth(0) > 80
end

--local diagnostics = {
--  "diagnostics",
--  sources = { "nvim_diagnostic" },
--  sections = { "error", "warn" },
--  symbols = { error = " ", warn = " " },
--  colored = true,
--  update_in_insert = true,
--  always_visible = true,
--}

local diff = {
  "diff",
  colored = true,
  symbols = { added = "  ", modified = " ", removed = " " },
  diff_color = {
    added = { fg = "#98be65" },
    modified = { fg = "#ecbe7b" },
    removed = { fg = "#ec5f67" },
  },
  cond = hide_in_width
}

--local mode = {
--  "mode",
--  fmt = function(str)
--    return "-- " .. str .. " --"
--  end,
--}


local file_name = {
  'filename',
  file_status = true, -- Displays file status (readonly status, modified status)
  path = 2, -- 0: Just the filename
  -- 1: Relative path
  -- 2: Absolute path

  shorting_target = 40, -- Shortens path to leave 40 spaces in the window
  -- for other components. (terrible name, any suggestions?)
  symbols = {
    modified = '[+]', -- Text to show when the file is modified.
    readonly = '[-]', -- Text to show when the file is non-modifiable or readonly.
    unnamed = '[No Name]', -- Text to show for unnamed buffers.
  },
}

local filetype = {
  "filetype",
  icons_enabled = false,
  icon = nil,
}

--local branch = {
--  "branch",
--  icons_enabled = true,
--  icon = "",
--}

local location = {
  "location",
  padding = 1,
}

-- cool function for progress
--local progress = function()
--  local current_line = vim.fn.line(".")
--  local total_lines = vim.fn.line("$")
--  -- local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
--  local chars = { "██", "▇▇", "▆▆", "▅▅", "▄▄", "▃▃", "▂▂", "▁▁", " ", }
--  local line_ratio = current_line / total_lines
--  local index = math.ceil(line_ratio * #chars)
--  return current_line/total_lines
--  -- return chars[index]
--end

--local spaces = function()
--  return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
--end


lualine.setup({
  options = {
    icons_enabled = true,
    theme = "auto",

    --      
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = { "alpha", "startify", "dashboard", "NvimTree", "Outline" ,"coc-explorer","vista"},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 10,
      tabline = 10,
      winbar = 10,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {file_name},
    lualine_c = {'diagnostics'},
    lualine_x = {diff,},
    lualine_y = {'encoding','filetype'},
    lualine_z = {'location','progress'},
  },

  --sections = {
  --  lualine_a = {'mode'},
  --  lualine_b = {'branch', 'diff', 'diagnostics'},
  --  lualine_c = {'filename'},
  --  lualine_x = {'encoding', 'fileformat', 'filetype'},
  --  lualine_y = {'progress'},
  --  lualine_z = {'location'}
  --},


  inactive_sections = {
    lualine_a = {},
    lualine_b = { file_name },
    lualine_c = {},
    lualine_x = { },
    lualine_y = {filetype, location },
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
})
