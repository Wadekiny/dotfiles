"
" __      __                __           __      
"/\ \  __/\ \              /\ \         /\ \  __    __    
"\ \ \/\ \ \ \    _____    \_\ \    ____\ \ \/\ \  /\_\   _____   __  __
" \ \ \ \ \ \ \  / ___ \  / ___ \  /  __ \ \ \/ /__\/\ \/\  __  \/\ \/\ \
"  \ \ \_\ \_\ \/\ \__\ \/\ \__\ \/\  ____\ \  ____ \ \ \ \ \_/\ \ \ \_\ \
"   \ \ ________\ \__ /\_\ \__/ \_\ \_____\\ \_\__/\_\ \_\ \_\\ \_\ \____ \
"    \/_________/\/__/\/_/\/__/\/_/\/_____/ \/_/  \/_/\/_/\/_/ \/_/\/___/> \
"                                                                     /\___/
"                                                                     \/__/
"
"
"


let mapleader = ";"      " 定义<leader>键
set termguicolors
set nocompatible         " 设置不兼容原始vi模式
set nomodeline            
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
set noeb                 " 关闭错误的提示
syntax enable            " 开启语法高亮功能
set t_Co=256             " 开启256色支持
set cmdheight=1          " 设置命令行的高度
"set cmdheight=2          " 设置命令行的高度
set showtabline=1
set showcmd              " select模式下显示选中的行数
set ruler                " 总是显示光标位置
set laststatus=2         " 总是显示状态栏
set number               " 开启行号显示
set relativenumber       " 特殊行号
set cursorline           " 高亮显示当前行
"set whichwrap+=<,>,h,l   " 设置光标键跨行
set ttimeoutlen=100        " 设置<ESC>键响应时间
"set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
set mouse=a
set hidden
set updatetime=100
set shortmess+=c
set numberwidth=5
set fdm=marker
set scrolloff=5
filetype plugin on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent           " 设置自动缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0    " 设置C/C++语言的具体缩进方式
set smartindent          " 智能的选择对其方式
filetype indent on       " 自适应不同语言的智能缩进
set expandtab            " 将制表符扩展为空格
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符 
set smarttab             " 在行和段开始处使用制表符 
"set wrap                 " 折行
set backspace=2          " 使用回车键正常处理indent,eol,start等
set sidescroll=10        " 设置向右滚动字符数
set nofoldenable         " 禁用折叠代码

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu             " vim自身命名行模式智能补全
set completeopt-=preview " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"记住上次位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"撤销记忆
if has('persistent_undo')
	set undofile
	set undodir=~/.config/nvim/tmp/undo,.
endif



"pluginstall
call plug#begin('~/.config/nvim/plugged')
"input-------------------------------
Plug 'vim-scripts/fcitx.vim'		"普通模式和插入模式输入法记忆
"Plug 'kevinhwang91/vim-ibus-sw' 
Plug 'easymotion/vim-easymotion'	"快速跳转
Plug 'jiangmiao/auto-pairs'			"自动括号	
Plug 'junegunn/vim-peekaboo'		"复制缓存区
Plug 'mg979/vim-visual-multi'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
"Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' } "python高亮

"display-------------------------------
Plug 'scrooloose/nerdtree'
"Plug 'vim-airline/vim-airline'
"Plug 'mengelbrecht/lightline-bufferline' 
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'nvim-lualine/lualine.nvim'
"Plug 'itchyny/lightline.vim'
Plug 'kevinhwang91/rnvimr'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-startify'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }


    "themes
Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'KabbAmine/yowish.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sainnhe/sonokai'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }


Plug 'machakann/vim-highlightedyank'
Plug 'preservim/tagbar'
Plug 'jszakmeister/markdown2ctags' "(use pip to install, it's not a vim plugin)

" problem
"Plug 'lvht/tagbar-markdown'
"Plug 'xolox/vim-misc'
"Plug 'xolox/vim-easytags'

"complete---------------------------
"Plug 'Valloric/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}


"markdown---------------------------
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown' 
Plug 'dhruvasagar/vim-table-mode'
Plug 'mzlogin/vim-markdown-toc'
Plug 'ferrine/md-img-paste.vim'
"Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
"Plug 'iamcco/mathjax-support-for-mkdp'

" debug ------------------
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'theHamsta/nvim-dap-virtual-text'


" lua plugins
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter-textobjects' " -- enhance texetobject selection
Plug 'romgrk/nvim-treesitter-context'   "show class/function at the top
Plug 'ethanholz/nvim-lastplace' " auto return back to the last modified positon when open a file
Plug 'akinsho/toggleterm.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'folke/which-key.nvim'
Plug 'phaazon/hop.nvim'
Plug 'norcalli/nvim-colorizer.lua'
"Plug 'folke/trouble.nvim'
"Plug 'Pocco81/HighStr.nvim'
"Plug 'rhysd/accelerated-jk'





call plug#end()

lua << EOF
local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  vim.notify("lualine not found!")
  return
end

local hide_in_width = function()
  return vim.fn.winwidth(0) > 80
end

local diagnostics = {
  "diagnostics",
  sources = { "nvim_diagnostic" },
  sections = { "error", "warn" },
  symbols = { error = " ", warn = " " },
  colored = false,
  update_in_insert = false,
  always_visible = true,
}

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

local mode = {
  "mode",
  fmt = function(str)
    return "-- " .. str .. " --"
  end,
}


local file_name = {
  'filename',
  file_status = true, -- Displays file status (readonly status, modified status)
  path = 1, -- 0: Just the filename
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

local branch = {
  "branch",
  icons_enabled = true,
  icon = "",
}

local location = {
  "location",
  padding = 0,
}

-- cool function for progress
local progress = function()
  local current_line = vim.fn.line(".")
  local total_lines = vim.fn.line("$")
  -- local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
  local chars = { "██", "▇▇", "▆▆", "▅▅", "▄▄", "▃▃", "▂▂", "▁▁", " ", }
  local line_ratio = current_line / total_lines
  local index = math.ceil(line_ratio * #chars)
  return chars[index]
end


local spaces = function()
  return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
end

-- add gps module to get the position information
-- local gps = require("nvim-gps")

lualine.setup({
  options = {
    icons_enabled = true,
    theme = "auto",


    -- 
    --  
    component_separators = { left = "\\", right = "|" },
    section_separators = { left = "", right = "" },
    -- component_separators = { left = "", right = "" },
    -- section_separators = { left = "", right = "" },
    disabled_filetypes = { "alpha", "startify", "dashboard", "NvimTree", "Outline" ,"coc-explorer"},
    always_divide_middle = true,
  },




  sections = {
    --lualine_a = { branch, diagnostics },
    --lualine_b = { mode },
    --lualine_c = { file_rame },
    lualine_a = {mode},
    lualine_b = {file_name},
    lualine_c = {},
    lualine_x = {diff, "encoding"},
    lualine_y = {filetype,},
    lualine_z = {location},
    --lualine_x = { diff, spaces, "encoding", filetype, "fileformat" },
    --lualine_y = { location },
    --lualine_z = { progress },
  },
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
EOF



lua << EOF
local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  vim.notify("bufferline not found!")
  return
end

bufferline.setup ({
    options = {
    mode = "buffers", -- set to "tabs" to only show tabpages instead
    numbers = "ordinal", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
    --- @deprecated, please specify numbers as a function to customize the styling
    -- number_style = "superscript", --| "subscript" | "" | { "none", "subscript" }, -- buffer_id at index 1, ordinal at index 2
    close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
    right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
    left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
    middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
    -- NOTE: this plugin is designed with this icon in mind,
    -- and so changing this is NOT recommended, this is intended
    -- as an escape hatch for people who cannot bear it for whatever reason
    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    --- name_formatter can be used to change the buffer's label in the bufferline.
    --- Please note some names can/will break the
    --- bufferline so use this at your discretion knowing that it has
    --- some limitations that will *NOT* be fixed.
    name_formatter = function(buf)  -- buf contains a "name", "path" and "bufnr"
      -- remove extension from markdown files for example
      if buf.name:match('%.md') then
        return vim.fn.fnamemodify(buf.name, ':t:r')
      end
    end,
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    tab_size = 18,
    diagnostics = false, --| "nvim_lsp" | "coc",
    diagnostics_update_in_insert = false,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      return "("..count..")"
    end,
    -- NOTE: this will be called a lot so don't do any heavy processing here
    custom_filter = function(buf_number, buf_numbers)
      -- filter out filetypes you don't want to see
      if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
        return true
      end
      -- filter out by buffer name
      if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
        return true
      end
      -- filter out based on arbitrary rules
      -- e.g. filter out vim wiki buffer from tabline in your work repo
      if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
        return true
      end
      -- filter out by it's index number in list (don't show first buffer)
      if buf_numbers[1] ~= buf_number then
        return true
      end
    end,
    offsets = {{filetype = "NvimTree", text = "File Explorer", text_align="center"}}, -- | function , text_align = "left" | "center" | "right"}},
    show_buffer_icons = true, --| false, -- disable filetype icons for buffers
    show_buffer_close_icons = true, --| false,
    show_close_icon = true, --| false,
    show_tab_indicators = true, -- | false,
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    -- can also be a table containing 2 custom separators
    -- [focused and unfocused]. eg: { '|', '|' }
    separator_style = "thin", --| "slant" | "thick" | "thin" | { 'any', 'any' },
    enforce_regular_tabs = false, --| true,
    always_show_bufferline = true, -- | false,
    sort_by =  'directory',  -- ,'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
    --   -- add custom logic
    --   return buffer_a.modified > buffer_b.modified
    -- end
  }
})
EOF


lua require'colorizer'.setup()
lua require'hop'.setup()
lua require("toggleterm").setup()



lua << EOF
local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  vim.notify("treesitter not found!")
  return
end

configs.setup {
  ensure_installed = { "cpp", "c", "python", "go", "markdown", "json", "yaml", "html",  }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = false, disable = { "yaml" } },
  context_commentstring = {
    enable = true,
    config = {
      -- Languages that have a single comment style
      typescript = "// %s",
      css = "/* %s */",
      scss = "/* %s */",
      html = "<!-- %s -->",
      svelte = "<!-- %s -->",
      vue = "<!-- %s -->",
      json = "",
    },
  },
  -- textobjects extension settings
  -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
  textobjects = {
    swap = {
      enable = false,
    },
    select = {
      enable = true,
      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
    move = {
      enable = true,
      set_jumps = false, -- whether to set jumps in the jumplist
      goto_next_start = {
        ["]]"] = "@function.outer",
        -- ["]["] = "@function.outer",
      },
      goto_next_end = {
        ["]["] = "@function.outer",
        -- ["]["] = "@class.outer",
      },
      goto_previous_start = {
        ["[["] = "@function.outer",
        -- ["[]"] = "@function.outer",
      },
      goto_previous_end = {
        ["[]"] = "@function.outer",
        -- ["[]"] = "@class.outer",
      },
    },
    lsp_interop = {
      enable = false,
      border = 'none',
      peek_definition_code = {
        ["<leader>pf"] = "@function.outer",
        ["<leader>pF"] = "@class.outer",
      },
    },
  },
  textsubjects = {
    enable = false,
    keymaps = { ["."] = "textsubjects-smart", [";"] = "textsubjects-big" },
  },
  playground = {
    enable = false,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = "o",
      toggle_hl_groups = "i",
      toggle_injected_languages = "t",
      toggle_anonymous_nodes = "a",
      toggle_language_display = "I",
      focus_language = "f",
      unfocus_language = "F",
      update = "R",
      goto_node = "<cr>",
      show_help = "?",
    },
  },
  rainbow = {
    enable = false,
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
  },
  autotag = { enable = false },
  -- matchup plugin
  -- https://github.com/andymass/vim-matchup
  matchup = {
    enable = false, -- mandatory, false will disable the whole extension
    -- disable = { "c", "ruby" },  -- optional, list of language that will be disabled
    -- [options]
  },
  -- autopairs plugin
  autopairs = {
    enable = false,
  },
}
EOF





lua require'treesitter-context'.setup{
            \    TreesitterContex = 'white',
            \    enable = true, 
            \    throttle = true,
            \    max_lines = 0, 
            \    trim_scope = 'outer', 
            \    patterns = { 
            \        default = {
            \        'class',
            \        'function',
            \        'method',
            \        },
            \    },
            \    exact_patterns = {
            \    },
            \    zindex = 20, 
            \    mode = 'cursor'
            \
            \}

















" set
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>


noremap f <cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>
noremap F <cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>

lua vim.api.nvim_set_keymap('n', '<leader>w', "<cmd>HopWord<cr>", {})
lua vim.api.nvim_set_keymap('n', '<leader>j', "<cmd>HopLine<cr>", {})
lua vim.api.nvim_set_keymap('n', '<leader>k', "<cmd>HopLine<cr>", {})
lua vim.api.nvim_set_keymap('n', '<leader>f', "<cmd>HopChar1<cr>", {})

lua vim.api.nvim_set_keymap('v', '<leader>w', "<cmd>HopWord<cr>", {})
lua vim.api.nvim_set_keymap('v', '<leader>j', "<cmd>HopLine<cr>", {})
lua vim.api.nvim_set_keymap('v', '<leader>k', "<cmd>HopLine<cr>", {})
lua vim.api.nvim_set_keymap('v', '<leader>f', "<cmd>HopChar1<cr>", {})

lua << EOF
local dap = require('dap')
dap.adapters.python = {
  type = 'executable';
  --command = 'python';
  --command = os.getenv('HOME') .. '/.virtualenvs/tools/bin/python';
  command = 'python3';

  args = { '-m', 'debugpy.adapter' };
}
EOF


lua << EOF
local dap = require('dap')
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
EOF

lua << EOF
local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

EOF

"lua require('dapui').setup()
lua require("dapui").setup({
            \  icons = { expanded = "", collapsed = "" },
            \  mappings = {
            \    expand = { "<CR>", "<2-LeftMouse>" },
            \    open = "o",
            \    remove = "d",
            \    edit = "e",
            \    repl = "r",
            \    toggle = "t",
            \  },
            \  expand_lines = vim.fn.has("nvim-0.7"),
            \  layouts = {
            \    {
            \      elements = {
            \        { id = "scopes", size = 0.25 },
            \        "breakpoints",
            \        "stacks",
            \        "watches",
            \      },
            \      size = 40, 
            \      position = "left",
            \    },
            \    {
            \      elements = {
            \        "repl",
            \      },
            \      size = 0.3, 
            \      position = "bottom",
            \    },
            \  },
            \  floating = {
            \    max_height = nil, 
            \    max_width = nil, 
            \    border = "single",
            \    mappings = {
            \      close = { "q", "<Esc>" },
            \    },
            \  },
            \  windows = { indent = 1 },
            \  render = {
            \    max_type_length = nil, 
            \  }
            \})

"\        "console",
"
"
nnoremap <leader>c <cmd>lua require'dap'.continue()<cr>
nnoremap <leader>q <cmd>lua require'dap'.terminate()<cr>
nnoremap <leader>s <cmd>lua require'dap'.step_into()<cr>
nnoremap <leader>n <cmd>lua require'dap'.step_over()<cr>
nnoremap <leader>o <cmd>lua require'dap'.step_out()<cr>
nnoremap <leader>b <cmd>lua require'dap'.toggle_breakpoint()<cr>

"nnoremap <leader>d <cmd>lua require'dapui'.toggle()<cr>



"coc install
let g:coc_global_extensions = [
    \'coc-marketplace', 
    \'coc-json', 
    \'coc-clangd',
    \'coc-vimlsp',
    \'coc-actions',
    \'coc-explorer',
    \'coc-pyright',
    \]
"\'coc-git',
"\'coc-jedi',
"\'coc-pyright',

 "vim-highlightedyank 复制时高亮
let g:highlightedyank_highlight_duration = 400

" color-theme

set background=dark

" Important!!
if has('termguicolors')
  set termguicolors
endif
" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'shusia'
let g:sonokai_better_performance = 1
"let g:sonokai_colors_override = {'bg0': ['#1e222a', '235'], 'bg2': ['#282c34', '236']}
let g:sonokai_colors_override = {'bg0': ['#222222', '235'], 'bg2': ['#222222', '236']}
colorscheme sonokai



"colorscheme yowish 
"let g:yowish = {}
"let g:yowish.option1 = 'foo'
"let g:yowish.option2 = 0

"let g:onedark_termcolors=256
"colorscheme onedark 

"colorscheme tokyonight

"colorscheme molokai 
"let g:rehash256 = 1
"let g:molokai_original = 1





""" airline
""let g:airline_theme="onedark"
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"endif
"
""insert mode, press <c-v>u + 4-digit code
""in alacritty, size = 15, offset: y=5, icons work fine
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''

"let g:airline_left_sep = '' "
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''




" lightline
"\ 'colorscheme': 'gruvbox',
"
"      \   'right': [ [ 'lineinfo','percent' ],
"      \              [ 'filetype' ],
"      \              [ 'fileformat', 'fileencoding', 'charvaluehex' ] ]
"
"      \ 'tabline': {
"      \   'left': [ ['buffers'] ],
"      \   'right': [ ['filepath'] ]
"      \ },
"      \ 'component_expand': {
"      \   'buffers': 'lightline#bufferline#buffers'
"      \ },
"      \ 'component_type': {
"      \   'buffers': 'tabsel'
"      \ },
"
"let g:lightline = {
"	  \ 'colorscheme': 'sonokai',
"      \ 'active': {
"      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ],
"      \   'right': [ [ 'percent' ],
"      \              [ 'filetype' ],
"      \              [ 'fileformat', 'fileencoding', 'charvaluehex' ] ]
"      \ },
"      \ 'separator': {'left': '', 'right': ''},
"      \ 'subseparator': {'left': ' ', 'right': '|'}
"      \ }

" bufferline


"
"let g:lightline#bufferline#enable_devicons = 1
"let g:lightline#bufferline#enable_nerdfont = 1
"let g:lightline#bufferline#icon_position = 'left'
"let g:lightline#bufferline#show_number = 1
"
"let g:lightline#bufferline#number_map = {
"\ 0: '⁰', 1: '¹ ', 2: '² ', 3: '³ ', 4: '⁴ ',
"\ 5: '⁵', 6: '⁶', 7: '⁷', 8: '⁸', 9: '⁹'}
"
""function LightlineBufferlineFilter(buffer)
""  return getbufvar(a:buffer, '&buftype') !=# 'terminal'
""endfunction
""let g:lightline#bufferline#buffer_filter = "LightlineBufferlineFilter"






" 24color
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" easymotion
"let g:EasyMotion_smartcase = 1


" markdown preview===================================
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 0

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = 'firefox'

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

" vim.markdown
let g:vim_markdown_math = 1


" markdown2ctags
" !!!remember to set the ctagsbin
let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : '~/.config/nvim/plugged/markdown2ctags/markdown2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes --sro=»',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '»',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }



" gitgutter
"leg g: gitgutter
let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = '┃'
let g:gitgutter_sign_removed = '▁'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_removed_above_and_below = '<'
let g:gitgutter_sign_modified_removed = '≃'




""======================================================================================================
"shortcut key
"======================================================================================================


""""""""""""""
" VIM快捷键 更改HJKL
""""""""""""""
nnoremap H 0
nnoremap J L
nnoremap K H
nnoremap L $
vnoremap H 0
vnoremap J L
vnoremap K H
vnoremap L $
inoremap 【 [
inoremap 】 ]

""""""""""""""
" VIM快捷键
""""""""""""""
nnoremap <leader>h :noh<cr>
nnoremap <space>h :bp<cr>
nnoremap <space>l :bn<cr>
nnoremap <space>d :bd<cr>
nnoremap <c-a>  gg<s-v>G
vnoremap Y "+y

"termnal模式下 退出插入模式
tnoremap <Esc> <C-\><C-n>

"复制缓存区
"nnoremap ' "

" 缩进文本
nnoremap <tab> V>
nnoremap <s-tab> V<
vnoremap <tab> >gv
vnoremap <s-tab> <gv

"分屏调整 m是alt
nnoremap <m-l> <c-w>5>
nnoremap <m-k> <c-w>5+
nnoremap <m-h> <c-w>5<
nnoremap <m-j> <c-w>5-

"" 分屏切换 
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

inoremap <c-h> <esc><c-w>h
inoremap <c-j> <esc><c-w>j
inoremap <c-k> <esc><c-w>k
inoremap <c-l> <esc><c-w>l

tnoremap <c-h> <C-\><C-n><c-w>h
tnoremap <c-j> <C-\><C-n><c-w>j
tnoremap <c-k> <C-\><C-n><c-w>k
tnoremap <c-l> <C-\><C-n><c-w>l

" 编辑vimrc
nnoremap <leader>e :edit $MYVIMRC<cr>                               
nnoremap <c-s> :w<cr>
" 重新加载vimrc文件
nnoremap <leader>rr :source $MYVIMRC<cr>

" nerdtree
"nnoremap  ff :NERDTreeToggle<CR>
" coc-explorer
nmap tt <Cmd>CocCommand explorer<CR>

"easymotion f是vim自带当前行找字母
"map <leader>w <Plug>(easymotion-bd-w)

" ranger in vim (rnvimr)
nnoremap  <leader>ra :RnvimrToggle<CR>





""""""""""""""""""""""""""""""
" coc.nvim
""""""""""""""""""""""""""""""

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm(): "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap rn <Plug>(coc-rename)

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" markdown preview ===============
nmap mo <Plug>MarkdownPreview
nmap mc <Plug>MarkdownPreviewStop
nmap mm <Plug>MarkdownPreviewToggle


" markdown image paste
" latex see github
"autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
"let g:mdip_imgdir_intext = './md_images_' . expand('%:r')
"let g:mdip_imgdir = './md_images_' . expand('%:r')
"let g:mdip_imgname = 'image'

function! MdPasteImage() 
    let g:mdip_imgdir_intext = './' . expand('%:r')
    let g:mdip_imgdir = './' . expand('%:r')
    "echo g:mdip_imgdir
    "echo g:mdip_imgdir_intext
    call mdip#MarkdownClipboardImage()

endfunction

autocmd FileType markdown nmap <buffer><silent> <leader>p :call MdPasteImage()<CR>


function! CommentItalic(num)
	let g:sonokai_disable_italic_comment = a:num
	colorscheme sonokai
	highlight HighlightedyankRegion cterm=reverse gui=reverse
endfunction


autocmd BufEnter * :call CommentItalic(1)
autocmd BufEnter *.cpp,*.py,*.c :call CommentItalic(0)



"  ctags==========================
"nmap F :TagbarToggle<CR>

" autocmd
"    coc 
autocmd CursorHold * silent call CocActionAsync('highlight')

"    nerdtree   
"autocmd VimEnter * NERDTree | wincmd l
"au BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"    tagbar
"au BufEnter *.py :TagbarToggle

" highlightedyank
highlight HighlightedyankRegion cterm=reverse gui=reverse
