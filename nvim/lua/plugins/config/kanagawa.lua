return {
    commentStyle = { italic = false },
    functionStyle = {italic=false},
    colors = {
        theme = {
            all = {
                ui = {
                    bg_gutter = "none"
                }
            }
        }
    },
    overrides = function(colors)
        local theme = colors.theme
        return {
            Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency,,
            PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
            PmenuSbar = { bg = theme.ui.bg_m1 },
            PmenuThumb = { bg = "#C0A36E" },
            BlinkCmpMenuBorder = { fg = "", bg = "" },

            NormalFloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            FloatTitle = { bg = "none" },
            -- LineNr = { fg = "#C0A36E", bg = "NONE" },
            CursorLineNr = { fg = colors.palette.sakuraPink, bg = "NONE" },
            WinSeparator = { fg = theme.ui.nontext }, -- brighter
            -- WinSeparator = { fg = "black" }, -- darker

        }
    end,
}
