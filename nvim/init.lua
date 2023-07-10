-- init.lua


--  __      __                __           __      
-- /\ \  __/\ \              /\ \         /\ \  __    __    
-- \ \ \/\ \ \ \    _____    \_\ \    ____\ \ \/\ \  /\_\   _____   __  __
--  \ \ \ \ \ \ \  / ___ \  / ___ \  /  __ \ \ \/ /__\/\ \/\  __  \/\ \/\ \
--   \ \ \_\ \_\ \/\ \__\ \/\ \__\ \/\  ____\ \  ____ \ \ \ \ \_/\ \ \ \_\ \
--    \ \ ________\ \__ /\_\ \__/ \_\ \_____\\ \_\__/\_\ \_\ \_\\ \_\ \____ \
--     \/_________/\/__/\/_/\/__/\/_/\/_____/ \/_/  \/_/\/_/\/_/ \/_/\/___/> \
--                                                                      /\___/
--                                                                      \/__/


vim.cmd[[
" nvim 设置
source ~/.config/nvim/subconfig/settings.vim
" 插件安装
""source ~/.config/nvim/subconfig/pluginstall.vim
" 快捷键
source ~/.config/nvim/subconfig/keymap.vim
" 根据不同文件类型重设主题和颜色（注释斜体）
" source ~/.config/nvim/subconfig/rewritecolor.vim
" 有关高亮的设置 (scheme, highlightedyank)
" source ~/.config/nvim/subconfig/plugconfig/colorscheme.vim  "先调用这个，防止颜色覆盖

]]

local plug_path = "/home/wadekiny/.config/nvim/plugged/"
local plug_config_path = "/home/wadekiny/.config/nvim/subconfig/plugconfig/"
local lazy_path = plug_path .. "lazy.nvim"
if not vim.loop.fs_stat(lazy_path) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
        lazy_path,
  })
end
vim.opt.rtp:prepend(lazy_path)

-- Example using a list of specs with the default options
vim.g.mapleader = ";" -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup(
{
	-- input-------------------------------
	{"inkch/vim-fcitx5-auto-toggle"},
	{"jiangmiao/auto-pairs"},		--"自动括号	
	{"junegunn/vim-peekaboo"},		--"复制缓存区
	{"mg979/vim-visual-multi"},        	--"多光标
	{"gcmt/wildfire.vim"},             	--"快速块选
	{'kylechui/nvim-surround',config=true},
	-- display-------------------------------
	{"machakann/vim-highlightedyank"},	--"复制时高亮
	{"nvim-tree/nvim-web-devicons"},   	--"图标
	{
		--"上面的缓冲区栏
		"akinsho/bufferline.nvim",
		config = function() dofile(plug_config_path .. "bufferline.lua") end,
	},
	{
		--"下面的状态栏
		"nvim-lualine/lualine.nvim",
		config = function() dofile(plug_config_path .. "evil_lualine.lua") end,
	},
	{"kevinhwang91/rnvimr"},          	--"ranger
	{
		--"左侧git记录
		"airblade/vim-gitgutter",
		config = function() vim.cmd("source" .. plug_config_path .. "gitgutter.vim") end,
	},
	{"mhinz/vim-startify"},           	--"启动界面
	{
		--快速搜索
		"nvim-telescope/telescope.nvim",
		config = function() dofile(plug_config_path .. "telescope.lua") end,
	},

	-- "themes
	{"joshdick/onedark.vim"},
	{"tomasr/molokai"},
	{"altercation/vim-colors-solarized"},
	{"KabbAmine/yowish.vim"},
	{
        "sainnhe/sonokai",
		config = function() vim.cmd("source" .. plug_config_path .. "colorscheme.vim") end,
    },
	{"folke/tokyonight.nvim"},		--{ 'branch': 'main' }

	-- "complete---------------------------
	--'neoclide/coc.nvim', --{'branch': 'release'} "补全插件
	-- 'godlygeek/tabular', --    "对齐代码 (没在用)
	{
		--"右侧类、函数、变量列表
		--"liuchengxu/vista.vim",
		--config = function() vim.cmd("source" .. plug_config_path .. "vista.vim") end,
	},
	-- "markdown---------------------------
	{	-- markdown preview
		"iamcco/markdown-preview.nvim",
		config = function() vim.cmd("source" .. plug_config_path .. "markdown.vim") end,
	},
	{"plasticboy/vim-markdown"},      --"markdown高亮，匹配
	{"dhruvasagar/vim-table-mode"},   --"表格模式
	{"mzlogin/vim-markdown-toc"},     --"生成markdown目录
	{"ferrine/md-img-paste.vim"},     --"markdown快速粘贴图片
	-- " debug ------------------
	--
	-- need a config
	{"mfussenegger/nvim-dap"},		--"调试引擎
	{"rcarriga/nvim-dap-ui"},		--"调试UI
	{
        "theHamsta/nvim-dap-virtual-text",
		config = function() dofile(plug_config_path .. "dap.lua") end,
    },	-- "调试虚拟文字
	-- lua plugins
	{"lewis6991/impatient.nvim"},		--"启动加速
	{"nvim-lua/plenary.nvim"},		--"neovim的一个库，很多其他插件需要这个
	{"nvim-lua/popup.nvim"},		--"提供弹窗api
	{
		-- 需要等待其自动安装对应的语言高亮，挺耗时间，设置了优先使用git
		"nvim-treesitter/nvim-treesitter",
		config = function() dofile(plug_config_path .. "treesitter.lua") end,
	},
	{"nvim-treesitter/nvim-treesitter-textobjects"},--  enhance texetobject selection
	{"romgrk/nvim-treesitter-context"},	--"在最上面显示当前的类、 show class/function at the top
	{"ethanholz/nvim-lastplace"},		--"记录退出文件时的编辑位置 auto return back to the last modified positon when open a file
	{	-- 终端,
		"akinsho/toggleterm.nvim",
		config = function() dofile(plug_config_path .. "toggleterm.lua") end,
	},

	{
		--"缩进线,
		"lukas-reineke/indent-blankline.nvim",
		config = function() dofile(plug_config_path .. "indent-blankline.lua") end,
	},
	{
		--"命令提示,
		"folke/which-key.nvim",
		config = function() dofile(plug_config_path .. "whichkey.lua") end,
 	},
	{
		--升级版easymotion,leap,hop
		"folke/flash.nvim",
		config=true,
    	},
	{"norcalli/nvim-colorizer.lua",config=true},	--"颜色变量可视化
	{"folke/todo-comments.nvim",config=true},		--"todo高亮
	{
		-- nvim-tree
		--"nvim-tree/nvim-tree.lua",
		-- config = function() dofile(plug_config_path .. "nvim-tree.lua") end,
	},
	{
		--"命令输入改为浮动窗口
		-- "folke/noice.nvim",
		-- config = function() dofile(plug_config_path .. "noice.lua") end,
	},

	{"MunifTanjim/nui.nvim"},
	-- {
 --        --"输出改为浮动窗口
 --        "rcarriga/nvim-notify",
	-- 	config = function() dofile(plug_config_path .. "notify.lua") end,
    -- },
	{
        -- 用于显示winbar
        -- "glepnir/lspsaga.nvim",
		-- config = function() dofile(plug_config_path .. "lspsaga.lua") end,
    },
    {"Bekaboo/dropbar.nvim"},
	--{"b0o/incline.nvim"},			--  "右上角悬浮窗"
	--{"sunjon/shade.nvim"},			--"使非活动窗口变暗
	{"williamboman/mason.nvim", build = ":MasonUpdate", config=true},		--
	{
        "neovim/nvim-lspconfig",
		config = function() dofile(plug_config_path .. "lsp.lua") end,
    },		-- 

	{"hrsh7th/cmp-nvim-lsp",},		--
	-- {"saadparwaiz1/cmp_luasnip",},		-- "片段补全
	{"hrsh7th/cmp-buffer",},			--
	{"hrsh7th/cmp-path",},			--
	{"hrsh7th/cmp-cmdline",},		--
	{"hrsh7th/cmp-vsnip",},		--
	{"hrsh7th/vim-vsnip",},		--
	{
        "hrsh7th/nvim-cmp",
		config = function() dofile(plug_config_path .. "cmp.lua") end,
    },			--
	-- {"michaelb/sniprun",},			-- 代码片段运行
	-- {"windwp/nvim-ts-autotag",},		--  "html标签补全


	{
        -- "quick // # -- comment
        "numToStr/Comment.nvim",
		config = function() dofile(plug_config_path .. "comment.lua") end,
    },
    -- {"dccsillag/magma-nvim"},		-- jupyter-like
	{
        --  "Project mananger
        "ahmedkhalf/project.nvim",
        config= function() require("project_nvim").setup{} end
    },		
	{
        --   "formatter
        "sbdchd/neoformat",
		config = function() vim.cmd("source" .. plug_config_path .. "neoformat.vim") end,
    },
	{"rafamadriz/friendly-snippets"},	-- " 片段补全
	{"skywind3000/asyncrun.vim"},		-- " 执行命令，并在quickfix窗口显示结果
	{"lewis6991/satellite.nvim",config=true},		-- "scrollbar
	{"kevinhwang91/nvim-bqf"},		-- "make quickfix window better
	{"junegunn/fzf"},			-- { 'do': { -> fzf#install() } }
	{"mhinz/vim-grepper"},			--
	{"anuvyklack/middleclass"},		--
	{"anuvyklack/windows.nvim"},		-- "窗口管理
	{"kevinhwang91/promise-async"},		-- 
	{
        -- "代码折叠
        "kevinhwang91/nvim-ufo",
		config = function() dofile(plug_config_path .. "ufo.lua") end,
    },
	--{"gelguy/wilder.nvim"},			-- "命令行补全
	--{"Pocco81/HighStr.nvim"},		--
},
{
root = plug_path
}
)














-- 弃用
-- " 'vim-scripts/fcitx.vim'		"普通模式和插入模式输入法记忆
-- " 'lyokha/vim-xkbswitch'         "require xkbswitch
-- "  'lyokha/vim-xkbswitch'         "require xkbswitch
-- " 'tpope/vim-surround'           "包围符号(做过修改，现在可以输入数字确定添加的符号数量wadekiny/surround)
-- "  'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons) 
-- " 'itchyny/lightline.vim'
-- " 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-']} "markdown预览
-- "  'fgheng/winbar.nvim'                           
-- "  'wadekiny/wadekiny-winbar.nvim'                           "winbar 显示路径(做了修改，去掉了图标，可以改变背景颜色，可以多种路径(绝对，相对，家目录相对)),但是, 浮动窗口youwenti
-- """"  'SmiteshP/nvim-navic'
-- "  'AckslD/nvim-neoclip.lua' "剪切板管理 
-- " 'kosayoda/nvim-lightbulb'
-- " 'ray-x/lsp_signature.nvim'
-- " 'rhysd/accelerated-jk'
-- "
-- " 'folke/trouble.nvim'
-- " 'famiu/bufdelete.nvim'                         "删除buffer不改变分屏结构
-- "  'feline-nvim/feline.nvim'
-- " 'kyazdani42/nvim-tree.lua'                     "左侧tree，启动比coc-explorer快，修改了notify的输出规则，否则进入git没有track的目录会弹很多框框
-- " 'edluffy/hologram.nvim'                        "nvim内显示图片
-- " 'mbpowers/nvimager'
--{"phaazon/hop.nvim"},			--"升级版 easymotion
