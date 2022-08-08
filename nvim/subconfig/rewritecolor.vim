
function! CommentItalic(num)
	let g:sonokai_disable_italic_comment = a:num
	colorscheme sonokai
	highlight HighlightedyankRegion cterm=reverse gui=reverse
    highlight IndentBlanklineContextChar guifg=#00FF00 
    hi CocMenuSel  guibg=#13354A 
    hi CocFloating guibg=#222222
endfunction


autocmd BufEnter * :call CommentItalic(1)
autocmd BufEnter *.cpp,*.py,*.c :call CommentItalic(0)

