let mapleader = ";"      " 定义<leader>键
set nocompatible         " 设置不兼容原始vi模式
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
set noeb                 " 关闭错误的提示
syntax enable            " 开启语法高亮功能
set t_Co=256             " 开启256色支持
set cmdheight=1          " 设置命令行的高度
"set cmdheight=2          " 设置命令行的高度
set showtabline=2
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
set numberwidth=1
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
set softtabstop=4        " 设置4个空格为制表符 set smarttab             " 在行和段开始处使用制表符 set wrap                 " 折行
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
Plug 'vim-scripts/fcitx.vim'
"Plug 'kevinhwang91/vim-ibus-sw'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-peekaboo'
Plug 'mg979/vim-visual-multi'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
"Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }

"display-------------------------------
Plug 'scrooloose/nerdtree'
"Plug 'vim-airline/vim-airline'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'kevinhwang91/rnvimr'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-startify'


"themes
Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'KabbAmine/yowish.vim'
Plug 'sheerun/vim-polyglot' 
Plug 'sainnhe/sonokai'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

Plug 'ryanoasis/vim-devicons'

Plug 'machakann/vim-highlightedyank'
Plug 'preservim/tagbar'
Plug 'jszakmeister/markdown2ctags' "(use pip to install, it's not a vim plugin)

" problem
Plug 'lvht/tagbar-markdown'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'

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


call plug#end()

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

" highlightedyank
highlight HighlightedyankRegion cterm=reverse gui=reverse


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
"
let g:lightline = {
	  \ 'colorscheme': 'sonokai',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'percent' ],
      \              [ 'filetype' ],
      \              [ 'fileformat', 'fileencoding', 'charvaluehex' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ [''] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ },
      \ 'separator': {'left': '', 'right': ''},
      \ 'subseparator': {'left': ' ', 'right': '|'}
      \ }

" bufferline


"
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#enable_nerdfont = 1
let g:lightline#bufferline#icon_position = 'left'
let g:lightline#bufferline#show_number = 1

let g:lightline#bufferline#number_map = {
\ 0: '⁰', 1: '¹ ', 2: '² ', 3: '³ ', 4: '⁴ ',
\ 5: '⁵', 6: '⁶', 7: '⁷', 8: '⁸', 9: '⁹'}

"function LightlineBufferlineFilter(buffer)
"  return getbufvar(a:buffer, '&buftype') !=# 'terminal'
"endfunction
"let g:lightline#bufferline#buffer_filter = "LightlineBufferlineFilter"






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
let g:EasyMotion_smartcase = 1


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
nnoremap <leader>r :source $MYVIMRC<cr>

" nerdtree
nnoremap  ff :NERDTreeToggle<CR>
" coc-explorer
"nmap ff <Cmd>CocCommand explorer<CR>

"easymotion f是vim自带当前行找字母
map <leader>w <Plug>(easymotion-bd-w)

" ranger in vim (rnvimr)
nnoremap  <leader>f :RnvimrToggle<CR>





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





"  ctags==========================
nmap F :TagbarToggle<CR>

" autocmd
"    coc 
autocmd CursorHold * silent call CocActionAsync('highlight')

"    nerdtree   
"autocmd VimEnter * NERDTree | wincmd l
"au BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"    tagbar
"au BufEnter *.py :TagbarToggle
