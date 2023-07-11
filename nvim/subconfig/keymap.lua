vim.g.mapleader = ";" -- Make sure to set `mapleader` before lazy so your mappings are correct

local plugsmap = {
    -- {mode='',  input='',  output='',                        opts={} },
    {mode='n', input='T', output='<cmd>SymbolsOutline<cr>', opts={silent=true}},
    {mode='v', input='Y', output='"+y',                     opts={silent=true} },
    ------------ termnal模式下 退出插入模式 ----------""
    {mode='t', input='<ESC>', output='<C-\\><C-n>',         opts={silent=true} },
    {mode={'n','v'}, input='H', output='0', opts={silent=true}},
    {mode={'n','v'}, input='J', output='L', opts={silent=true}},
    {mode={'n','v'}, input='K', output='H', opts={silent=true}},
    {mode={'n','v'}, input='L', output='$', opts={silent=true}},

    {mode='i', input='【', output='[', opts={silent=true}},
    {mode='i', input='】', output=']', opts={silent=true}},
    {mode='i', input='￥', output='$', opts={silent=true}},
    {mode='i', input='（', output='(', opts={silent=true}},
    {mode='i', input='）', output=')', opts={silent=true}},
    {mode='i', input='“' , output='"', opts={silent=true}},
    {mode='i', input='”' , output='"', opts={silent=true}},

    {mode='n', input='<TAB>', output='V>',         opts={silent=true} },
    {mode='n', input='<S-TAB>', output='V<',         opts={silent=true} },
    {mode='v', input='<TAB>', output='>gv',         opts={silent=true} },
    {mode='v', input='<S-TAB>', output='<gv',         opts={silent=true} },
    {mode='n', input='<m-l>', output='<c-w>5>', opts={silent=true}},
    {mode='n', input='<m-k>', output='<c-w>5+', opts={silent=true}},
    {mode='n', input='<m-h>', output='<c-w>5<', opts={silent=true}},
    {mode='n', input='<m-j>', output='<c-w>5-', opts={silent=true}},
    --""---------- toggleterm ----------""
    --"在lua配置中定义按键映射"
    {mode='n', input='<c-f>', output='<cmd>Neoformat<cr>', opts={silent=true}},
    --" 对应的语言需要安装对应的服务
    --" pacman -S clang-format
    --" pip install black
    --" pacman -S yapf
    {mode={'n','i','v'}, input='<c-s>', output='<cmd>w<cr>',         opts={silent=true} },

    {mode='n', input='<c-h>', output='<c-w>h',opts={silent=true}},
    {mode='n', input='<c-j>', output='<c-w>j',opts={silent=true}},
    {mode='n', input='<c-k>', output='<c-w>k',opts={silent=true}},
    {mode='n', input='<c-l>', output='<c-w>l',opts={silent=true}},

    -- ？？为啥不能用
    {mode='i', input='<c-h>', output='<esc><c-w>h',opts={silent=false}},
    {mode='i', input='<c-j>', output='<esc><c-w>j',opts={silent=true}},
    {mode='i', input='<c-k>', output='<esc><c-w>k',opts={silent=true}},
    {mode='i', input='<c-l>', output='<esc><c-w>l',opts={silent=true}},
    {mode='t', input='<c-h>', output='<C-\\><C-n><c-w>h',opts={silent=true}},
    {mode='t', input='<c-j>', output='<C-\\><C-n><c-w>j',opts={silent=true}},
    {mode='t', input='<c-k>', output='<C-\\><C-n><c-w>k',opts={silent=true}},
    {mode='t', input='<c-l>', output='<C-\\><C-n><c-w>l',opts={silent=true}},
    -- notify
    {mode='n', input='<leader><space>', output='<cmd>lua require"notify".dismiss()<cr>',opts={silent=true}},
    -- flash
    {mode={'n','x','o'}, input='<leader>w', output='<cmd>lua require"flash".jump()<cr>',opts={silent=true}},


    {mode='n',input='<leader>f',output='<cmd>Telescope find_files<cr>',opts={silent=true}},
    {mode='n',input='<leader>g',output='<cmd>Telescope live_grep<cr>' ,opts={silent=true}},
    {mode='n',input='<leader>B',output='<cmd>Telescope buffers<cr>  ' ,opts={silent=true}},
    {mode='n',input='<leader>H',output='<cmd>Telescope help_tags<cr>' ,opts={silent=true}},
    {mode='n',input='<leader>p',output='<cmd>Telescope projects<cr> ' ,opts={silent=true}},
    {mode='n',input='<leader>t',output='<cmd>Telescope file_browser<cr> ' ,opts={silent=true}},
    -- buffer line

    {mode='n', input='<space>1',     output='<Cmd>BufferLineGoToBuffer 1<CR>' , opts={silent=true}},
    {mode='n', input='<space>2',     output='<Cmd>BufferLineGoToBuffer 2<CR>' , opts={silent=true}},
    {mode='n', input='<space>3',     output='<Cmd>BufferLineGoToBuffer 3<CR>' , opts={silent=true}},
    {mode='n', input='<space>4',     output='<Cmd>BufferLineGoToBuffer 4<CR>' , opts={silent=true}},
    {mode='n', input='<space>5',     output='<Cmd>BufferLineGoToBuffer 5<CR>' , opts={silent=true}},
    {mode='n', input='<space>6',     output='<Cmd>BufferLineGoToBuffer 6<CR>' , opts={silent=true}},
    {mode='n', input='<space>7',     output='<Cmd>BufferLineGoToBuffer 7<CR>' , opts={silent=true}},
    {mode='n', input='<space>8',     output='<Cmd>BufferLineGoToBuffer 8<CR>' , opts={silent=true}},
    {mode='n', input='<space>9',     output='<Cmd>BufferLineGoToBuffer 9<CR>' , opts={silent=true}},
    {mode='n', input='<space>0',     output='<Cmd>BufferLineGoToBuffer -1<CR>', opts={silent=true}},
    {mode='n', input='<space><s-l>', output='<Cmd>BufferLineMoveNext<CR>' ,     opts={silent=true}},
    {mode='n', input='<space><s-h>', output='<Cmd>BufferLineMovePrev<CR>' ,     opts={silent=true}},
    {mode='n', input='<space>l',     output='<Cmd>BufferLineCycleNext<CR>',     opts={silent=true}},
    {mode='n', input='<space>h',     output='<Cmd>BufferLineCyclePrev<CR>',     opts={silent=true}},
    {mode='n', input='<space>s',     output='<cmd>source %<cr>',     opts={silent=false}},
    {mode='n', input='<space>d',     output='<cmd>bd<cr>',     opts={silent=false}},
    {mode='n', input='<space>q',     output='<cmd>q<cr>',     opts={silent=false}},
    {mode='n', input='<space>e',     output='<cmd>edit $MYVIMRC<cr>',     opts={silent=false}},
    {mode='n', input='<space>r',     output='<cmd>source $MYVIMRC<cr>',     opts={silent=false}},
    -- 切换工作目录
    {mode='n', input='tt',     output='<cmd>NvimTreeToggle<cr>',     opts={silent=true}},
    --markdown preview imagepaste
    -- sniprun
    -- 编译调试相关
    -- ranger
    -- telescope
}




for _, mapping in ipairs(plugsmap) do
    vim.keymap.set(mapping.mode, mapping.input, mapping.output, mapping.opts)
end

