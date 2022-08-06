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


" nvim 设置
source ~/.config/nvim/subconfig/settings.vim
" 插件安装
source ~/.config/nvim/subconfig/pluginstall.vim
" 快捷键
source ~/.config/nvim/subconfig/keymap.vim

" 插件配置
source ~/.config/nvim/subconfig/plugconfig/lualine.lua
source ~/.config/nvim/subconfig/plugconfig/bufferline.lua
source ~/.config/nvim/subconfig/plugconfig/treesitter.lua
source ~/.config/nvim/subconfig/plugconfig/dap.lua
source ~/.config/nvim/subconfig/plugconfig/coc.vim
source ~/.config/nvim/subconfig/plugconfig/colorscheme.vim
source ~/.config/nvim/subconfig/plugconfig/markdown.vim
source ~/.config/nvim/subconfig/plugconfig/git.vim
lua require'colorizer'.setup()
lua require'hop'.setup()
lua require("toggleterm").setup()


