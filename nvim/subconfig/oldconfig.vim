
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




"" 24color
"if (empty($TMUX))
"  if (has("nvim"))
"    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"  endif
"  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
"  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
"  if (has("termguicolors"))
"    set termguicolors
"  endif
"endif

" easymotion
"let g:EasyMotion_smartcase = 1
"
"
"
"    nerdtree   
"autocmd VimEnter * NERDTree | wincmd l
"au BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"    tagbar
"au BufEnter *.py :TagbarToggle
"
"
"
"  ctags==========================
"nmap F :TagbarToggle<CR>
"
"
"
"map <leader>w <Plug>(easymotion-bd-w)
