
local ibl = require("ibl")

ibl.setup({
    indent = {
        char = "│",                -- 默认竖线
        tab_char = "│",            -- 可选，tab 也显示竖线
    },
    scope = {
        enabled = true,            -- 开启作用域显示
        show_start = true,         -- 高亮当前作用域开始行
        show_end = false,          -- 是否高亮结束行
    },
})
--require("ibl").setup {
----require("indent_blankline").setup {
--    space_char_blankline = " ",
--    show_current_context = true,
--    show_current_context_start = true,
--}
--vim.cmd [[highlight IndentBlanklineContextChar guifg=#00FF00 gui=nocombine]]
--
-- vim.cmd [[highlight IndentBlanklineContextChar guifg=#00FF00 ]]
-- vim.cmd [[highlight IndentBlanklineSpaceCharBlankline guifg=#00FF00]]


