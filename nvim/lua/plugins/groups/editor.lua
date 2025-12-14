return {
    ---------------------------------------------------------------------------
    -- NOTE: Input & Editing Enhancements
    ---------------------------------------------------------------------------
    {
        -- Auto insert matching brackets, quotes, etc.
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
    },

    {
        -- Clipboard history manager (integrates with Telescope)
        "AckslD/nvim-neoclip.lua",
        opts = {},
    },

    { "mg979/vim-visual-multi" },          -- Multi-cursor (CTRL+n)
    -- { "gcmt/wildfire.vim" },               -- Fast block selection
    {"sustech-data/wildfire.nvim", 
    config = function()
        require("wildfire").setup()
    end,
},
    { "kylechui/nvim-surround", config = true }, -- Surround text objects

    {
        -- Restore last cursor position when reopening file
        "ethanholz/nvim-lastplace",
        config = true,
    },


    ---------------------------------------------------------------------------
    -- NOTE: Commenting & Formatting
    ---------------------------------------------------------------------------
    {
        -- Quick commenting with // # --
        "numToStr/Comment.nvim",
        opts = require("plugins.config.comment_opt"),
    },

    {
        -- Formatter engine
        "mhartington/formatter.nvim",
        config = true,
    },
}

