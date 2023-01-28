local winbar = require('winbar')

winbar.setup({
    enabled = true,
    path_style = '~', -- '/' or '~', or '.', or 'auto'
    show_file_path = true,
    show_symbols = true, -- require('nvim-gps') updating to nvim-navic

    colors = {
        icon = '#00ffff',
        path = '#00ff88', -- You can customize colors like #c946fd
        file_name = '#00ffff',
        symbols = '#ffffff',
        --bg = '#333333',
        --bg = '#202328',
        --bg = '#1e222a',
        bg = '#0d1117',
    },

    icons = {
        file_icon_default = '',
        seperator = '>',
        editor_state = '●',
        lock_icon = '',
    },

    exclude_filetype = {
        --'help',
        'startify',
        'dashboard',
        'packer',
        'neogitstatus',
        'NvimTree',
        'Trouble',
        'alpha',
        'lir',
        'Outline',
        'spectre_panel',
        'toggleterm',
        'qf',
        'coc-explorer',
        'vista',
        'dap-repl',
        'noice',   -- must add it !!!! otherwise noice will collapse
        'vista_markdown',
        'ranger',
        'rnvimr',
        '', --解决coc更改名字时，浮动窗口报错(这个浮动窗口的文件类型是空字符串)
        'dapui_watches',
        'dapui_stacks',
        'dapui_breakpoints',
        'dapui_breakpoints',
        'dapui_scopes',
        'dapui_console',
        'dap-repl',
    }
})
