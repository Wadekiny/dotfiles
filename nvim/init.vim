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
"很多问题可能是依赖的版本问题，多用:checkhealth,
"边框问题和alacritty，nerdfont都有关。
"lsp和node版本有关
"c-a数字+1
"<leader>grep不好用？
"lspsaga
"packer
"修改的插件 winbar  vim-surround (nvim-tree)
"which_key: health#which_key#check
"========================================================================
"## WhichKey: checking conflicting keymaps
"  - WARNING: conflicting keymap exists for mode **"n"**, lhs: **"t"**
"  - INFO: rhs: ` `
"  - WARNING: conflicting keymap exists for mode **"n"**, lhs: **"ys"**
"  - INFO: rhs: `<Plug>(nvim-surround-normal)`
"  - WARNING: conflicting keymap exists for mode **"n"**, lhs: **"yS"**
"  - INFO: rhs: `<Plug>(nvim-surround-normal-line)`
"  - WARNING: conflicting keymap exists for mode **"n"**, lhs: **"gc"**
"  - INFO: rhs: `<Plug>(comment_toggle_linewise)`
"  - WARNING: conflicting keymap exists for mode **"n"**, lhs: **"gb"**
"  - INFO: rhs: `<Plug>(comment_toggle_blockwise)`
"  - WARNING: buffer-local keymap overriding global for mode **"i"**, buf: 0, lhs: **"<c-r>"**
"  - INFO: old rhs: `peekaboo#peek(1, "\<c-r>",  0)`
"  - INFO: new rhs: `<cmd>lua require("which-key").show("\18", {mode = "i", auto = true})<cr>`
"  - WARNING: buffer-local keymap overriding global for mode **"n"**, buf: 0, lhs: **"\""**
"  - INFO: old rhs: `peekaboo#peek(v:count1, '"',  0)`
"  - INFO: new rhs: `<cmd>lua require("which-key").show("\"", {mode = "n", auto = true})<cr>`
"  - WARNING: buffer-local keymap overriding global for mode **"n"**, buf: 0, lhs: **"@"**
"  - INFO: old rhs: `peekaboo#peek(v:count1, '@', 0)`
"  - INFO: new rhs: `<cmd>lua require("which-key").show("@", {mode = "n", auto = true})<cr>`
"  - WARNING: buffer-local keymap overriding global for mode **"x"**, buf: 0, lhs: **"\""**
"  - INFO: old rhs: `peekaboo#peek(v:count1, '"',  1)`
"  - INFO: new rhs: `<cmd>lua require("which-key").show("\"", {mode = "v", auto = true})<cr>`
"
"
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
source ~/.config/nvim/subconfig/plugconfig/coc.vim

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
" source ~/.config/nvim/subconfig/plugconfig/noice.lua

" 输出改为浮动窗口
" source ~/.config/nvim/subconfig/plugconfig/notify.lua

" bufferline下面的winbar
source ~/.config/nvim/subconfig/plugconfig/winbar.lua

" lua require('feline').setup()
" lua require('feline').winbar.setup()

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

"使非活动窗口变暗 主题也许能做到，但是边界变丑,使用vista会出问题
" source ~/.config/nvim/subconfig/plugconfig/shade.lua

" 剪切板管理工具
" source ~/.config/nvim/subconfig/plugconfig/nvim-neoclip.lua
"
" LSP CMP
" source ~/.config/nvim/subconfig/plugconfig/lsp.lua
" source ~/.config/nvim/subconfig/plugconfig/cmp.lua
" source ~/.config/nvim/subconfig/plugconfig/lspsaga.lua
" lua require("mason").setup()
source ~/.config/nvim/subconfig/plugconfig/comment.lua
source ~/.config/nvim/subconfig/plugconfig/neoformat.vim
source ~/.config/nvim/subconfig/plugconfig/ufo.lua


lua require('nvim-surround').setup{}
lua require('sniprun').setup({})
lua require('nvim-ts-autotag').setup()
lua require("project_nvim").setup{}
lua require("telescope").load_extension('projects')
lua require("satellite").setup()
lua require("windows").setup()


lua << EOF
local high_str = require("high-str")


high_str.setup({
	verbosity = 0,
	saving_path = "/tmp/highstr/",
	highlight_colors = {
		-- color_id = {"bg_hex_code",<"fg_hex_code"/"smart">}
		color_0 = {"#0c0d0e", "smart"},	-- Cosmic charcoal
		color_1 = {"#e5c07b", "smart"},	-- Pastel yellow
		color_2 = {"#7FFFD4", "smart"},	-- Aqua menthe
		color_3 = {"#8A2BE2", "smart"},	-- Proton purple
		color_4 = {"#FF4500", "smart"},	-- Orange red
		color_5 = {"#008000", "smart"},	-- Office green
		color_6 = {"#0000FF", "smart"},	-- Just blue
		color_7 = {"#FFC0CB", "smart"},	-- Blush pink
		color_8 = {"#FFF9E3", "smart"},	-- Cosmic latte
		color_9 = {"#7d5c34", "smart"},	-- Fallow brown
	}
})
EOF

if exists("g:neovide")
    set guifont=JetBrainsMaiYuanNerdFontMono:h10
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


hi default UfoFoldedBg guibg=#7d5c34
