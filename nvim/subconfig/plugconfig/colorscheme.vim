
" color-theme
"set background=dark

" Important!!
if has('termguicolors')
  set termguicolors
endif
" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'shusia'
"let g:sonokai_style = 'default'
let g:sonokai_better_performance = 1
"let g:sonokai_colors_override = {'bg0': ['#1e222a', '235'], 'bg2': ['#282c34', '236']}
"let g:sonokai_colors_override = {'bg0': ['#222222', '235'], 'bg2': ['#222222', '236']}
"let g:sonokai_colors_override = {'bg0': ['#222222', '235'] }
let g:sonokai_colors_override = {'bg0': ['#0d1117', '235'] }
colorscheme sonokai






" highlightedyank
"vim-highlightedyank 复制时高亮
let g:highlightedyank_highlight_duration = 400
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
"
