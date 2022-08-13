"pluginstall
call plug#begin('~/.config/nvim/plugged')
"input-------------------------------
Plug 'vim-scripts/fcitx.vim'		"普通模式和插入模式输入法记忆
"Plug 'kevinhwang91/vim-ibus-sw' 
"Plug 'easymotion/vim-easymotion'	"快速跳转
Plug 'jiangmiao/auto-pairs'			"自动括号	
Plug 'junegunn/vim-peekaboo'		"复制缓存区
Plug 'mg979/vim-visual-multi'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
"Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' } "python高亮

"display-------------------------------
"Plug 'scrooloose/nerdtree'
"Plug 'vim-airline/vim-airline'
"Plug 'itchyny/lightline.vim'
"Plug 'mengelbrecht/lightline-bufferline' 
" Plug 'ryanoasis/vim-devicons' Icons without colors
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'kevinhwang91/rnvimr'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-startify'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'liuchengxu/vista.vim'


"themes
Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'KabbAmine/yowish.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sainnhe/sonokai'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }


Plug 'machakann/vim-highlightedyank'



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
Plug 'lewis6991/impatient.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-treesitter/nvim-treesitter-textobjects' " -- enhance texetobject selection
Plug 'romgrk/nvim-treesitter-context'   "show class/function at the top
Plug 'ethanholz/nvim-lastplace' " auto return back to the last modified positon when open a file
Plug 'akinsho/toggleterm.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'folke/which-key.nvim'
Plug 'phaazon/hop.nvim'
Plug 'norcalli/nvim-colorizer.lua'

Plug 'folke/todo-comments.nvim'
Plug 'kyazdani42/nvim-tree.lua'
"Plug 'folke/trouble.nvim'
"Plug 'Pocco81/HighStr.nvim'
"Plug 'rhysd/accelerated-jk'

" problem
"Plug 'preservim/tagbar'
"Plug 'jszakmeister/markdown2ctags' "(use pip to install, it's not a vim plugin)
"Plug 'lvht/tagbar-markdown'
"Plug 'xolox/vim-misc'
"Plug 'xolox/vim-easytags'



"Plug 'hrsh7th/nvim-cmp'
"Plug 'kdheepak/cmp-latex-symbols'
"Plug 'GoldsteinE/compe-latex-symbols'
"Plug 'jbyuki/nabla.nvim'
"Plug 'lervag/vimtex'
call plug#end()




