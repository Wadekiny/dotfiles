
require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = false,
}
--vim.cmd [[highlight IndentBlanklineContextChar guifg=#00FF00 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineContextChar guifg=#00FF00 ]]

