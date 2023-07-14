vim.loader.enable()
vim.o.termguicolors=true
vim.o.compatible = false
vim.o.modeline = false
vim.o.eb = false
vim.o.cmdheight = 1
vim.o.showtabline = 2
vim.o.showcmd=true
vim.o.ruler=true
vim.o.laststatus = 2
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.ttimeoutlen =10
vim.o.mouse='a'
vim.o.hidden=true
vim.o.updatetime=100
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.numberwidth = 5
vim.o.scrolloff = 2
vim.o.autoindent  = true
vim.o.smartindent=true
vim.o.expandtab=true
vim.o.tabstop=4
vim.o.shiftwidth=4
vim.o.softtabstop=4
vim.o.smarttab=true
vim.o.wrap=true
vim.o.sidescroll=2
vim.o.foldenable=false
vim.o.completeopt = 'longest,noinsert,menuone,noselect,preview'
vim.o.completeopt = 'menuone,noinsert,noselect,preview'



vim.o.ignorecase = true
vim.o.backup = false
vim.o.swapfile = false
vim.o.autoread = true
vim.o.autowrite = true
vim.o.confirm = true

-- 记住上次位置
-- vim.cmd[[
--     au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
-- ]]

-- 撤销记忆
vim.cmd[[
    if has('persistent_undo')
        set undodir=$HOME/.config/nvim/tmp/undo
        set undofile
    endif
]]

-- 非聚焦窗口不显示光标
vim.cmd[[
    autocmd WinEnter * set cursorline
    autocmd WinLeave * set nocursorline
]]


-- set langmenu=zh_CN.UTF-8
-- set helplang=cn
-- set termencoding=utf-8
-- set encoding=utf8
-- set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
