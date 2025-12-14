return {
library = {
                -- Absolute path
                "~/projects/my-awesome-lib",

                -- Relative path, resolved from plugin dir
                "lazy.nvim",

                -- Load luvit types on keyword match
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },

                -- Always load LazyVim library
                "LazyVim",

                -- Load LazyVim only when global `LazyVim` appears
                { path = "LazyVim", words = { "LazyVim" } },

                -- Load wezterm types when required
                -- Requires: DrKJeff16/wezterm-types
                { path = "wezterm-types", mods = { "wezterm" } },

                -- Load xmake when editing xmake.lua
                -- Requires: LelouchHe/xmake-luals-addon
                { path = "xmake-luals-addon/library", files = { "xmake.lua" } },
            },

            -- Enable unless explicitly disabled
            enabled = function(root_dir)
                return vim.g.lazydev_enabled == nil and true or vim.g.lazydev_enabled
            end,

            -- Disable if .luarc.json exists
            enabled = function(root_dir)
                return not vim.uv.fs_stat(root_dir .. "/.luarc.json")
            end,
}
