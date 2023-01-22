" leader 
let mapleader = ";"      " 定义<leader>键


"  NOTE: one key -----------------------------------------------------
"
"{{{
""---------- enhance finding (hop,like easymotion) ----------""
noremap f <cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>
noremap F <cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>


""---------- vista ----------""
nnoremap T <cmd>Vista!!<cr>

""---------- source luafile ----------""
nnoremap <space>s <cmd>source %<cr>
"

""---------- global copy(vim-peekaboo) ----------""
vnoremap Y "+y
""---------- termnal模式下 退出插入模式 ----------""
tnoremap <Esc> <C-\><C-n>

""---------- 按键映射 ----------""
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
inoremap ￥ $
inoremap （ (
inoremap ） )
inoremap “ "
inoremap ” "

""---------- 缩进文本 ----------""
nnoremap <tab> V>
nnoremap <s-tab> V<
vnoremap <tab> >gv
vnoremap <s-tab> <gv
"}}}
"
"

""---------- 保存 ----------""
nnoremap <c-s> <cmd>:w<cr>
inoremap <c-s> <cmd>:w<cr>
vnoremap <c-s> <cmd>:w<cr>


"  NOTE: ctrl group -----------------------------------------------------
"
"{{{
""---------- toggleterm ----------""
"在lua配置中定义按键映射"
"
""---------- NvimTree ----------""
"在lua配置中定义按键映射"
"
"autocmd TermEnter term://*toggleterm#*
"      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

"nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
"inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

""---------- select all ----------""
"nnoremap <c-a>  gg<s-v>G


""---------- 分屏切换 ----------""
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

"""---------- coc ----------""
"" Use <c-space> to trigger completion.
"inoremap <silent><expr> <c-space> coc#refresh()
""}}}

"  NOTE: alt group -----------------------------------------------------
"
"{{{
""---------- 分屏调整,切换; m是alt ----------""
nnoremap <m-l> <c-w>5>
nnoremap <m-k> <c-w>5+
nnoremap <m-h> <c-w>5<
nnoremap <m-j> <c-w>5-
"}}}

"  NOTE: leader group -----------------------------------------------------
"
"{{{
"
"
"
""---------- snipperrun ----------""
nnoremap <leader>R <cmd>SnipRun<cr>
nnoremap <leader>C <cmd>SnipClose<cr>

vnoremap <leader>R :'<,'>SnipRun<cr>
vnoremap <leader>C <cmd>SnipClose<cr>
""---------- hop(like easymotion) ----------""

lua vim.api.nvim_set_keymap('n', '<leader>w', "<cmd>HopWord<cr>", {})
lua vim.api.nvim_set_keymap('n', '<leader>j', "<cmd>HopLineAC<cr>", {})
lua vim.api.nvim_set_keymap('n', '<leader>k', "<cmd>HopLineBC<cr>", {})
"lua vim.api.nvim_set_keymap('n', '<leader>f', "<cmd>HopChar1<cr>", {})

lua vim.api.nvim_set_keymap('v', '<leader>w', "<cmd>HopWord<cr>", {})
lua vim.api.nvim_set_keymap('v', '<leader>j', "<cmd>HopLine<cr>", {})
lua vim.api.nvim_set_keymap('v', '<leader>k', "<cmd>HopLine<cr>", {})
"lua vim.api.nvim_set_keymap('v', '<leader>f', "<cmd>HopChar1<cr>", {})

""---------- dap ----------""
nnoremap <leader>e <Cmd>lua require("dapui").eval()<CR>
nnoremap <leader>c <cmd>lua require'dap'.continue()<cr>
nnoremap <leader>q <cmd>lua require'dap'.terminate()<cr> <cmd>lua require"dapui".close()<cr>
nnoremap <leader>s <cmd>lua require'dap'.step_into()<cr>
nnoremap <leader>n <cmd>lua require'dap'.step_over()<cr>
nnoremap <leader>o <cmd>lua require'dap'.step_out()<cr>
nnoremap <leader>b <cmd>lua require'dap'.toggle_breakpoint()<cr>

""---------- dapui ----------""
" 监听dap自动打开dapui,不用手动打开
"nnoremap <leader>d <cmd>lua require'dapui'.toggle()<cr> 

""---------- ranger ----------""
nnoremap  <leader>r :RnvimrToggle<CR>

"---------- telescope ----------""
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>B <cmd>Telescope buffers<cr>
nnoremap <leader>H <cmd>Telescope help_tags<cr>
nnoremap <leader>p <cmd>Telescope projects<cr>
"---------- 取消搜索高亮 ----------""
nnoremap <leader>h :noh<cr>

"---------- 运行python代码 ----------""
"}}}

"  NOTE: space group -----------------------------------------------------
"
"{{{
""---------- change buffer ----------""
"nnoremap <space>h :bp<cr>
"nnoremap <space>l :bn<cr>
nnoremap <space>d :bd<cr>
nnoremap <space>q :q<cr>
" need bufdelete.nvim
"nnoremap <space>d :lua require('bufdelete').bufdelete(0,false)<cr>


""---------- vimrc ----------""
nnoremap <space>e :edit $MYVIMRC<cr>                               
nnoremap <space>r :source $MYVIMRC<cr>

""---------- 切换工作目录 ----------""
function! ChangePwd() 
    let name = input('input the path: ')
    if name == ''
        lua vim.notify(vim.fn.getcwd(),vim.log.levels.INFO,{ title = "ChangePwd" })
    elseif name =='this' 
        cd %:p:h
        lua vim.notify(vim.fn.getcwd(),vim.log.levels.INFO,{ title = "ChangePwd" })
    elseif name == 'nvim' 
        cd ~/.config/nvim/
        lua vim.notify(vim.fn.getcwd(),vim.log.levels.INFO,{ title = "ChangePwd" })
    elseif name == 'config' 
        cd ~/.config/
        lua vim.notify(vim.fn.getcwd(),vim.log.levels.INFO,{ title = "ChangePwd" })
    elseif name == 'post'  || name == 'blog'
        cd ~/BLOG/source/_posts/
        lua vim.notify(vim.fn.getcwd(),vim.log.levels.INFO,{ title = "ChangePwd" })
    elseif name == 'wadekiny' || name == 'home'
        cd ~
        lua vim.notify(vim.fn.getcwd(),vim.log.levels.INFO,{ title = "ChangePwd" })
    else 
        execute 'cd' name
        lua vim.notify(vim.fn.getcwd(),vim.log.levels.INFO,{ title = "ChangePwd" })
    endif 
endfunction

nnoremap <space>f <cmd>call ChangePwd()<cr>
" more details : `:h expand`


"}}}

"  NOTE: other group
"
"{{{
"nvim 自带，ga -> get ascii

"""---------- coc ----------""
"inoremap <silent><expr> <TAB>
"      \ coc#pum#visible() ? coc#pum#next(1):
"      \ CheckBackspace() ? "\<Tab>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
"
"" Make <CR> to accept selected completion item or notify coc.nvim to format
"" <C-g>u breaks current undo, please make your own choice.
"inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
"                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"
"function! CheckBackspace() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"
"" Applying codeAction to the selected region.
"" Example: `<leader>aap` for current paragraph
"xmap gl  <Plug>(coc-codeaction-selected)
"nmap gl  <Plug>(coc-codeaction-selected)
"
"" Use `[g` and `]g` to navigate diagnostics
"" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
"" GoTo code navigation.
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
"
"nmap rn <Plug>(coc-rename)

""---------- coc-explorer ----------""
"nmap tt <Cmd>CocCommand explorer<CR>
nmap tt <Cmd>NvimTreeToggle<CR>

""---------- markdown preview ----------""
nmap mm <Plug>MarkdownPreviewToggle

""---------- markdown image paste ----------""
"for more details, see `:h %:t`"
function! MdPasteImage() 
    let g:mdip_imgdir_intext = './' . expand('%:t:r')
    let g:mdip_imgdir = './' . expand('%:t:r')
    "echo g:mdip_imgdir
    "echo g:mdip_imgdir_intext
    call mdip#MarkdownClipboardImage()
endfunction
autocmd FileType markdown nmap <buffer><silent> mp :call MdPasteImage()<CR>
"}}}
"
"
""---------- notify ----------""
nnoremap <silent> <leader><space> :lua require('notify').dismiss()<cr>




nnoremap <silent><space>1 <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap <silent><space>2 <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap <silent><space>3 <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap <silent><space>4 <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap <silent><space>5 <Cmd>BufferLineGoToBuffer 5<CR>
nnoremap <silent><space>6 <Cmd>BufferLineGoToBuffer 6<CR>
nnoremap <silent><space>7 <Cmd>BufferLineGoToBuffer 7<CR>
nnoremap <silent><space>8 <Cmd>BufferLineGoToBuffer 8<CR>
nnoremap <silent><space>9 <Cmd>BufferLineGoToBuffer 9<CR>
nnoremap <silent><space>0 <Cmd>BufferLineGoToBuffer -1<CR>

nnoremap <silent><space><s-l> <Cmd>BufferLineMoveNext<CR>
nnoremap <silent><space><s-h> <Cmd>BufferLineMovePrev<CR>

nnoremap <silent><space>l <Cmd>BufferLineCycleNext<CR>
nnoremap <silent><space>h <Cmd>BufferLineCyclePrev<CR>





nnoremap <F4> <cmd>call CompileCpp()<cr>
" noremap  :call CompileRunGcc()<CR>
"
func! CompileCpp()
    if &filetype == 'cpp'
		exec "!g++ -std=c++11 % -Wall -o %<.out -g"
    endif 
endfunc

func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		set splitbelow
		:sp
		:res -5
		term gcc % -o %< && time ./%<
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		:term ./%<
	elseif &filetype == 'cs'
		set splitbelow
		silent! exec "!mcs %"
		:sp
		:res -5
		:term mono %<.exe
	elseif &filetype == 'java'
		set splitbelow
		:sp
		:res -5
		term javac % && time java %<
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype == 'markdown'
		exec "InstantMarkdownPreview"
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'dart'
		exec "CocCommand flutter.run -d ".g:flutter_default_device." ".g:flutter_run_args
		silent! exec "CocCommand flutter.dev.openDevLog"
	elseif &filetype == 'javascript'
		set splitbelow
		:sp
		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
	elseif &filetype == 'racket'
		set splitbelow
		:sp
		:res -5
		term racket %
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run .
	endif
endfunc
