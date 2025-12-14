-- Search and navigation plugins
return {
    ---------------------------------------------------------------------------
    -- NOTE: Telescope Extensions
    ---------------------------------------------------------------------------
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("telescope").load_extension("file_browser")
        end,
    },

    ---------------------------------------------------------------------------
    -- NOTE: Telescope Core
    ---------------------------------------------------------------------------
    {
        -- Fast fuzzy search, picker UI
        "nvim-telescope/telescope.nvim",
        opts = require("plugins.config.telescope_opt"),
    },

    ---------------------------------------------------------------------------
    -- NOTE: Keymaps & Navigation
    ---------------------------------------------------------------------------
    {
        -- Shows key suggestions
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {},
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    },

    {
        -- Navigation enhancer (better than hop/leap/easymotion)
        "folke/flash.nvim",
        opts = require("plugins.config.flash_opt"),
    },
    ---------------------------------------------------------------------------
    -- NOTE: Project Navigation (optional)
    ---------------------------------------------------------------------------
    -- {
    --     -- Project manager
    --     "ahmedkhalf/project.nvim",
    --     config = function()
    --         require("telescope").load_extension("projects")
    --         require("project_nvim").setup({})
    --     end,
    -- },
}

