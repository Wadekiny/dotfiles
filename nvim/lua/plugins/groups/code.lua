-- LSP, completion, and debugging plugins
local plug_config_path = "/Users/wadekiny/Workspace/dotfiles/nvim/lua/plugins/config/"

return {

    ---------------------------------------------------------------------------
    -- NOTE: Lua Development Tools
    ---------------------------------------------------------------------------
    {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on Lua files
        opts = require("plugins.config.lazydev_opt")
    },

    ---------------------------------------------------------------------------
    -- NOTE: Debug Adapter Protocol (DAP)
    ---------------------------------------------------------------------------
    {
        "nvim-neotest/nvim-nio",
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    {
        "mfussenegger/nvim-dap",
        config = function()
            require("plugins.config.dap")
        end,
    },

    { "rcarriga/nvim-dap-ui" },               -- Debug UI
    { "theHamsta/nvim-dap-virtual-text" },    -- Inline virtual debug text

    ---------------------------------------------------------------------------
    -- NOTE: LSP (Language Server Protocol)
    ---------------------------------------------------------------------------
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        config = true,
    },

    ---------------------------------------------------------------------------
    -- NOTE: Completion (nvim-cmp and sources)
    ---------------------------------------------------------------------------
    -- { "hrsh7th/cmp-nvim-lsp" },
    -- { "hrsh7th/cmp-buffer" },
    -- { "hrsh7th/cmp-cmdline" },
    --
    -- { "hrsh7th/cmp-vsnip" },
    -- { "hrsh7th/vim-vsnip" },
    --
    -- {
    --     "hrsh7th/nvim-cmp",
    --     config = function()
    --         dofile(plug_config_path .. "cmp.lua")
    --     end,
    -- },
    --
    -- -- { "saadparwaiz1/cmp_luasnip" },        -- snippet engine: luasnip
    -- -- { "michaelb/sniprun" },                -- code snippet runner
    -- -- { "windwp/nvim-ts-autotag" },          -- html auto-tagging
    -- { "rafamadriz/friendly-snippets" },       -- prebuilt snippet collections
    --
    {
        'saghen/blink.cmp',
        event = { 'InsertEnter', 'CmdlineEnter' },
        -- optional: provides snippets for the snippet source
        dependencies = { 'rafamadriz/friendly-snippets' },

        -- use a release tag to download pre-built binaries
        version = '1.*',
        -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
        -- build = 'cargo build --release',
        -- If you use nix, you can build from source using latest nightly rust with:
        -- build = 'nix run .#build-plugin',

        opts = require("plugins.config.blink-cmp_opt"),
        opts_extend = { "sources.default" }
    },

    ---------------------------------------------------------------------------
    -- NOTE: Utilities
    ---------------------------------------------------------------------------
    { "skywind3000/asyncrun.vim" },           -- Async command execution
    { "kevinhwang91/promise-async" },         -- Promise/A+ helper
    {
    	"kdheepak/lazygit.nvim",
        lazy = true,
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    }
}

