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

"修ff改的插件 winbar nvim-tree vim-surround
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
"
" 有关高亮的设置 (scheme, highlightedyank)
source ~/.config/nvim/subconfig/plugconfig/colorscheme.vim  "先调用这个，防止颜色覆盖

" 下面的状态栏
"source ~/.config/nvim/subconfig/plugconfig/lualine.lua
source ~/.config/nvim/subconfig/plugconfig/evil_lualine.lua

" 上面的缓冲区栏"
source ~/.config/nvim/subconfig/plugconfig/bufferline.lua

" 代码高亮 python bug
source ~/.config/nvim/subconfig/plugconfig/treesitter.lua

" 调试 (dap, dapui, nvim-dap-virtual-text)
source ~/.config/nvim/subconfig/plugconfig/dap.lua


" coc补全，coc插件列表，coc窗口颜色配置
"source ~/.config/nvim/subconfig/plugconfig/coc.vim

" markdown预览
source ~/.config/nvim/subconfig/plugconfig/markdown.vim

" 显示git修改记录
source ~/.config/nvim/subconfig/plugconfig/gitgutter.vim

" 搜索插件telescope，设置边框
source ~/.config/nvim/subconfig/plugconfig/telescope.lua

" 显示缩紧对齐竖线，设置颜色
source ~/.config/nvim/subconfig/plugconfig/indent-blankline.lua 

" 右侧的类、函数、变量列表
source ~/.config/nvim/subconfig/plugconfig/vista.vim

" 终端
source ~/.config/nvim/subconfig/plugconfig/toggleterm.lua

" 命令输入改为浮动窗口
source ~/.config/nvim/subconfig/plugconfig/noice.lua

" 输出改为浮动窗口
source ~/.config/nvim/subconfig/plugconfig/notify.lua

" bufferline下面的winbar
"source ~/.config/nvim/subconfig/plugconfig/winbar.lua

" 颜色变量可视化
lua require('colorizer').setup()

" 强化easy-motion
lua require('hop').setup()

" todo高亮
lua require('todo-comments').setup()

" 快捷键提示
source ~/.config/nvim/subconfig/plugconfig/whichkey.lua

" 文件树
source ~/.config/nvim/subconfig/plugconfig/nvim-tree.lua


" nvim内显示图片
"lua require('hologram').setup({auto_display = false})

" 右上角stateline
"lua require('incline').setup()

"使非活动窗口变暗 主题也许能做到，但是边界变丑
"source ~/.config/nvim/subconfig/plugconfig/shade.lua

"lua require("mason").setup()

source ~/.config/nvim/subconfig/plugconfig/lsp.lua
source ~/.config/nvim/subconfig/plugconfig/cmp.lua
source ~/.config/nvim/subconfig/plugconfig/lspsaga.lua
source ~/.config/nvim/subconfig/plugconfig/comment.lua

lua require('nvim-surround').setup{}

lua << EOF
require('sniprun').setup({
    --display={"VirtualTextOk","VirtualTextErr"},
})
require('nvim-ts-autotag').setup()
EOF




lua << EOF
require("project_nvim").setup{

}

EOF

lua require("telescope").load_extension('projects')




if exists("g:neovide")
    set guifont=JetBrainsMaiYuanNerdFontMono
    "set guifont=Kingnam_Maiyuan,Code_New_Roman_NerdFont_Mono
    "set guifont=CodeNewRoman_Nerd_Font_Mono:h14
    "set guifont=Code_New_Roman:h14
    "set guifont=JetBrainsMono_Nerd_Font,Kingnam_Maiyuan:h13
    "let g:neovide_transparency = 0
    let g:neovide_scroll_animation_length = 0.3
    let g:neovide_hide_mouse_when_typing = v:false
    let g:neovide_profiler = v:false
    "let g:neovide_confirm_quit = v:true 
    let g:neovide_padding_top=10
    let g:neovide_padding_left=10
    let g:neovide_padding_right=10
    let g:neovide_padding_bottom=10
end
 

