
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
"let g:sonokai_dim_inactive_windows = 1
"let g:sonokai_colors_override = {'bg0': ['#1e222a', '235'], 'bg2': ['#282c34', '236']}
"let g:sonokai_colors_override = {'bg0': ['#222222', '235'], 'bg2': ['#222222', '236']}
"let g:sonokai_colors_override = {'bg0': ['#222222', '235'] }
let g:sonokai_colors_override = {'bg0': ['#0d1117', '235'] , 'black':['#a9dc76','232'],'bg_dim':     ['0d1117',   '232']}
colorscheme sonokai

"          \ 'black':      ['#1a181a',   '232'],
"          \ 'bg_dim':     ['#211f21',   '232'],
"          \ 'bg0':        ['#2d2a2e',   '235'],
"          \ 'bg1':        ['#37343a',   '236'],
"          \ 'bg2':        ['#3b383e',   '236'],
"          \ 'bg3':        ['#423f46',   '237'],
"          \ 'bg4':        ['#49464e',   '237'],
"          \ 'bg_red':     ['#ff6188',   '203'],
"          \ 'diff_red':   ['#55393d',   '52'],
"          \ 'bg_green':   ['#a9dc76',   '107'],
"          \ 'diff_green': ['#394634',   '22'],
"          \ 'bg_blue':    ['#78dce8',   '110'],
"          \ 'diff_blue':  ['#354157',   '17'],
"          \ 'diff_yellow':['#4e432f',   '54'],
"          \ 'fg':         ['#e3e1e4',   '250'],
"          \ 'red':        ['#f85e84',   '203'],
"          \ 'orange':     ['#ef9062',   '215'],
"          \ 'yellow':     ['#e5c463',   '179'],
"          \ 'green':      ['#9ecd6f',   '107'],
"          \ 'blue':       ['#7accd7',   '110'],
"          \ 'purple':     ['#ab9df2',   '176'],
"          \ 'grey':       ['#848089',   '246'],
"          \ 'grey_dim':   ['#605d68',   '240'],
"          \ 'none':       ['NONE',      'NONE']






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
