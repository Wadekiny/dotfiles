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


" nvim 设置
source ~/.config/nvim/subconfig/settings.vim
" 插件安装
source ~/.config/nvim/subconfig/pluginstall.vim
" 快捷键
source ~/.config/nvim/subconfig/keymap.vim
" 根据不同文件类型重设主题和颜色（注释斜体）
"source ~/.config/nvim/subconfig/rewritecolor.vim

" 插件配置
source ~/.config/nvim/subconfig/plugconfig/colorscheme.vim  "先调用这个，防止颜色覆盖
source ~/.config/nvim/subconfig/plugconfig/lualine.lua
source ~/.config/nvim/subconfig/plugconfig/bufferline.lua
source ~/.config/nvim/subconfig/plugconfig/treesitter.lua
source ~/.config/nvim/subconfig/plugconfig/dap.lua
source ~/.config/nvim/subconfig/plugconfig/coc.vim
source ~/.config/nvim/subconfig/plugconfig/markdown.vim
source ~/.config/nvim/subconfig/plugconfig/gitgutter.vim
source ~/.config/nvim/subconfig/plugconfig/telescope.lua
source ~/.config/nvim/subconfig/plugconfig/indent-blankline.lua
source ~/.config/nvim/subconfig/plugconfig/vista.vim
"source ~/.config/nvim/subconfig/plugconfig/nvim-tree.lua
lua require'colorizer'.setup()
lua require'hop'.setup()
lua require'toggleterm'.setup()
"lua require('todo-comments').setup()

"nnoremap <leader>p :lua require("nabla").popup()<CR> " Customize with popup({border = ...})  : `single` (default), `double`, `rounded`


"filetype plugin indent on
"
"" This enables Vim's and neovim's syntax-related features. Without this, some
"" VimTeX features will not work (see ":help vimtex-requirements" for more
"" info).
"syntax enable
"
"" Viewer options: One may configure the viewer either by specifying a built-in
"" viewer method:
"let g:vimtex_view_method = 'zathura'
"
"" Or with a generic interface:
"let g:vimtex_view_general_viewer = 'okular'
"let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
"
"" VimTeX uses latexmk as the default compiler backend. If you use it, which is
"" strongly recommended, you probably don't need to configure anything. If you
"" want another compiler backend, you can change it as follows. The list of
"" supported backends and further explanation is provided in the documentation,
"" see ":help vimtex-compiler".
"let g:vimtex_compiler_method = 'latexrun'
"
"" Most VimTeX mappings rely on localleader and this can be changed with the
"" following line. The default is usually fine and is the symbol "\".
"let maplocalleader = ","
