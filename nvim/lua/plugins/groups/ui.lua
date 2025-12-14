-- UI and visual plugins
return {
    ---------------------------------------------------------------------------
    -- NOTE: Themes
    ---------------------------------------------------------------------------
    -- { "joshdick/onedark.vim" },
    -- { "tomasr/molokai" },
    -- { "altercation/vim-colors-solarized" },
    -- { "KabbAmine/yowish.vim" },
    -- { "ribru17/bamboo.nvim" },
    -- { "sainnhe/sonokai" },
    -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    -- { "folke/tokyonight.nvim" },
    -- { "rose-pine/neovim", name = "rose-pine" },
    {
        "rebelot/kanagawa.nvim" ,
        opts = require("plugins.config.kanagawa")
    },

    ---------------------------------------------------------------------------
    -- NOTE: Icons
    ---------------------------------------------------------------------------
    { "nvim-tree/nvim-web-devicons" },
    -- {
    --     "nvim-mini/mini.icons" ,
    --     lazy=false,
    --     config = function ()
    --        -- require("mini.icons").setup()
    --        require("mini.icons").mock_nvim_web_devicons()
    --     end
    -- },

    ---------------------------------------------------------------------------
    -- NOTE: Snacks
    ---------------------------------------------------------------------------
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = require("plugins.config.snacks_opt"),
    },

    ---------------------------------------------------------------------------
    -- NOTE: Bar (statusline, bufferline, scrollbars, etc.)
    ---------------------------------------------------------------------------
    {
        "Bekaboo/dropbar.nvim",
        config = function()
            require("plugins.config.dropbar")
        end,
    },
    {
        "petertriho/nvim-scrollbar",
        config = true,
    },
    {
        -- Status line at the bottom
        "nvim-lualine/lualine.nvim",
        opts = require("plugins.config.lualine_opt"),
    },
    {
        -- Buffer line at the top
        "akinsho/bufferline.nvim",
        opts = require("plugins.config.bufferline_opt"),
    },

    ---------------------------------------------------------------------------
    -- NOTE: Window / UI Components
    ---------------------------------------------------------------------------
    {
        -- File explorer
        "nvim-tree/nvim-tree.lua",
        config = function()
            require("plugins.config.nvim-tree")
        end,
    },
    {
        -- Terminal manager
        "akinsho/toggleterm.nvim",
        opts = require("plugins.config.toggleterm_opt"),
    },
    {
        -- Better Quickfix window
        "kevinhwang91/nvim-bqf",
    },
    {'MunifTanjim/nui.nvim'},
    {
        -- Command input as floating window
        "folke/noice.nvim",
        opts = require("plugins.config.noice_opt"),
    },
    {
        -- Notification UI
        "rcarriga/nvim-notify",
        opts = require("plugins.config.notify_opt"),
    },
    -- {
    --     "simrat39/symbols-outline.nvim",
    --     config = true,
    -- },

    ---------------------------------------------------------------------------
    -- NOTE: Highlight & Visual Enhancements
    ---------------------------------------------------------------------------
    {
        -- do not show cursorline in unfocused win, 
        -- instead of using autocmd, this plugin will not affect telescope
        'tummetott/reticle.nvim',
        event = 'VeryLazy', -- optionally lazy load the plugin
        opts = {
            -- add options here if you wish to override the default settings
        },
    },
    {
        -- Treesitter: syntax highlight & more
        "nvim-treesitter/nvim-treesitter",
        branch="master",
        lazy=false,
        build=":TSUpdate",
        opts = require("plugins.config.treesitter_opt"),
    },
    { "nvim-treesitter/nvim-treesitter-textobjects" }, -- Better text object operations
    { "romgrk/nvim-treesitter-context" },              -- Show current context at top
    {
        -- Indent guides
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = require("plugins.config.indent-blankline_opt"),
    },
    {
        -- highlighting
        "folke/todo-comments.nvim",
        opts = require("plugins.config.todo-comments"),
    },
    { "norcalli/nvim-colorizer.lua", config = true },  -- Color value preview
    { 
        "lewis6991/gitsigns.nvim",
        opts = require("plugins.config.gitsigns_opt")

    },                     -- Git indicators

    {
        -- Code folding UI
        "kevinhwang91/nvim-ufo",
        config = function()
            require("plugins.config.ufo")
        end,
    },
    {
        -- Highlight yanked text
        "gbprod/yanky.nvim",
        opts = {},
    },

    ---------------------------------------------------------------------------
    -- NOTE: Cursor
    ---------------------------------------------------------------------------
    -- {
    --     "sphamba/smear-cursor.nvim",
    --     opts = require("plugins.config.smear-cursor_opt"),
    -- },


}

