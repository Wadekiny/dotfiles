"pluginstall
call plug#begin('~/.config/nvim/plugged')
"input-------------------------------
Plug 'vim-scripts/fcitx.vim'		"普通模式和插入模式输入法记忆
Plug 'jiangmiao/auto-pairs'			"自动括号	
Plug 'junegunn/vim-peekaboo'		"复制缓存区
Plug 'mg979/vim-visual-multi'       "多光标
Plug 'gcmt/wildfire.vim'            "快速块选
Plug 'tpope/vim-surround'           "包围符号(做过修改，现在可以输入数字确定添加的符号数量)


"display-------------------------------
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons) 
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' } "上面的缓冲区栏
Plug 'nvim-lualine/lualine.nvim'    "下面的状态栏
Plug 'kevinhwang91/rnvimr'          "ranger
Plug 'airblade/vim-gitgutter'       "左侧git记录
Plug 'mhinz/vim-startify'           "启动界面
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' } "快速搜索
Plug 'liuchengxu/vista.vim'         "右侧类、函数、变量列表


"themes
Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'KabbAmine/yowish.vim'
Plug 'sainnhe/sonokai'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }


Plug 'machakann/vim-highlightedyank'    "复制时高亮



"complete---------------------------
Plug 'neoclide/coc.nvim', {'branch': 'release'} "补全插件
Plug 'godlygeek/tabular'    "对齐代码 (没在用)


"markdown---------------------------
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']} "markdown预览
Plug 'plasticboy/vim-markdown'      "markdown高亮，匹配
Plug 'dhruvasagar/vim-table-mode'   "表格模式
Plug 'mzlogin/vim-markdown-toc'     "生成markdown目录
Plug 'ferrine/md-img-paste.vim'     "markdown快速粘贴图片

" debug ------------------
Plug 'mfussenegger/nvim-dap'        "调试引擎
Plug 'rcarriga/nvim-dap-ui'         "调试UI
Plug 'theHamsta/nvim-dap-virtual-text' "调试虚拟文字


" lua plugins
Plug 'lewis6991/impatient.nvim'     "启动加速
Plug 'nvim-lua/plenary.nvim'        "neovim的一个库，很多其他插件需要这个
Plug 'nvim-lua/popup.nvim'          "提供弹窗api
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "  WARN:  代码高亮 some bug in neovim0.8

Plug 'nvim-treesitter/nvim-treesitter-textobjects' " -- enhance texetobject selection
Plug 'romgrk/nvim-treesitter-context'               "在最上面显示当前的类、 show class/function at the top
Plug 'ethanholz/nvim-lastplace'                     "记录退出文件时的编辑位置 auto return back to the last modified positon when open a file
Plug 'akinsho/toggleterm.nvim'                      "终端
Plug 'lukas-reineke/indent-blankline.nvim'          "缩进线
Plug 'folke/which-key.nvim'                         "命令提示
Plug 'phaazon/hop.nvim'                             "升级版 easymotion
Plug 'norcalli/nvim-colorizer.lua'                  "颜色变量可视化

Plug 'folke/todo-comments.nvim'                     "todo高亮
Plug 'kyazdani42/nvim-tree.lua'                     "左侧tree，没用，用的是coc-explorer

Plug 'folke/noice.nvim'                             "命令输入改为浮动窗口
Plug 'MunifTanjim/nui.nvim'
Plug 'rcarriga/nvim-notify'                         "输出改为浮动窗口


Plug 'fgheng/winbar.nvim'                           "winbar 显示路径(做了修改，去掉了图标，可以改变背景颜色，可以多种路径(绝对，相对，家目录相对))

Plug 'famiu/bufdelete.nvim'                         "删除buffer不改变分屏结构

"Plug 'folke/trouble.nvim'
"Plug 'Pocco81/HighStr.nvim'
"Plug 'rhysd/accelerated-jk'

call plug#end()




" DEPRECATED

" problem
"Plug 'preservim/tagbar'
"Plug 'jszakmeister/markdown2ctags' "(use pip to install, it's not a vim plugin)
"
"Plug 'lvht/tagbar-markdown'
"Plug 'xolox/vim-misc'
"Plug 'xolox/vim-easytags'



"Plug 'hrsh7th/nvim-cmp'
"Plug 'kdheepak/cmp-latex-symbols'
"Plug 'GoldsteinE/compe-latex-symbols'
"Plug 'jbyuki/nabla.nvim'
"Plug 'lervag/vimtex'
"Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
"Plug 'iamcco/mathjax-support-for-mkdp'
"
"
"
"Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' } "python高亮
"Plug 'kevinhwang91/vim-ibus-sw' 
"Plug 'easymotion/vim-easymotion'	"快速跳转
"Plug 'scrooloose/nerdtree'
"Plug 'vim-airline/vim-airline'
"Plug 'itchyny/lightline.vim'
"Plug 'mengelbrecht/lightline-bufferline' 
" Plug 'ryanoasis/vim-devicons' Icons without colors
"Plug 'Valloric/YouCompleteMe'




