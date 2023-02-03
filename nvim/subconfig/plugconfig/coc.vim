
let g:coc_global_extensions = [
    \'coc-marketplace', 
    \'coc-json', 
    \'coc-clangd',
    \'coc-vimlsp',
    \'coc-actions',
    \'coc-pyright',
    \'coc-sumneko-lua',
    \'coc-sh',
    \'coc-tsserver',
    \'coc-snippets',
    \'coc-css',
    \'coc-html',
    \]

"\'coc-explorer',
"\'coc-git',
"\'coc-jedi',
"\'coc-pyright',
"\'coc-markdownlint',
"\'coc-vimtex',

" autocmd
autocmd CursorHold * silent call CocActionAsync('highlight')

""要重新source才能生效，为啥, 因为在rewritecolor中调用了sonokai,覆盖了颜色设置
"hi CocSearch ctermfg=12 guifg=#18A3FF
"hi CocMenuSel ctermbg=109 guibg=#13354A
"hi CocMenuSel  guibg=#6cd0df 
"hi CocFloating guibg=#222222
"hi CocFloating guibg=#332233
" hi CocFloating guibg= #1c1b22
" for more details, see `:h CocFloating`
hi CocFloating guibg= #0d1117

