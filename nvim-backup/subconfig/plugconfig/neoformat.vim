"neoformat
" augroup fmt
"   autocmd!
"   autocmd BufWritePre * undojoin | Neoformat
" augroup END

let g:neoformat_cpp_clangformat = {
            \ 'exe': 'clang-format',
            \ 'args': ['--style=Microsoft'],
            \ }

let g:neoformat_c_clangformat = {
            \ 'exe': 'clang-format',
            \ 'args': ['--style=Microsoft'],
            \ }

