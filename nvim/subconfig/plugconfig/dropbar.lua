local api = require("dropbar.api")
vim.keymap.set('n', '<Leader><leader>', api.pick)
-- vim.keymap.set('n', '[c', api.goto_context_start)
-- vim.keymap.set('n', ']c', api.select_next_context)

local confirm = function()
    local menu = api.get_current_dropbar_menu()
    if not menu then
        return
    end
    local cursor = vim.api.nvim_win_get_cursor(menu.win)
    local component = menu.entries[cursor[1]]:first_clickable(cursor[2])
    if component then
        menu:click_on(component)
    end
end

local quit_curr = function()
    local menu = api.get_current_dropbar_menu()
    if menu then
        menu:close()
    end
end

require("dropbar").setup({
    icons = {
        enable = true,
        kinds = {
          use_devicons = true,
          symbols = {
            Array = '󰅪 ',
            Boolean = ' ',
            BreakStatement = '󰙧 ',
            Call = '󰃷 ',
            CaseStatement = '󱃙 ',
            Class = ' ',
            Color = '󰏘 ',
            Constant = '󰏿 ',
            Constructor = ' ',
            ContinueStatement = '→ ',
            Copilot = ' ',
            Declaration = '󰙠 ',
            Delete = '󰩺 ',
            DoStatement = '󰑖 ',
            Enum = ' ',
            EnumMember = ' ',
            Event = ' ',
            Field = ' ',
            File = '󰈔 ',
            Folder = '󰉋 ',
            ForStatement = '󰑖 ',
            Function = '󰊕 ',
            Identifier = '󰀫 ',
            IfStatement = '󰇉 ',
            Interface = ' ',
            Keyword = '󰌋 ',
            List = '󰅪 ',
            Log = '󰦪 ',
            Lsp = ' ',
            Macro = '󰁌 ',
            MarkdownH1 = '󰉫 ',
            MarkdownH2 = '󰉬 ',
            MarkdownH3 = '󰉭 ',
            MarkdownH4 = '󰉮 ',
            MarkdownH5 = '󰉯 ',
            MarkdownH6 = '󰉰 ',
            Method = '󰆧 ',
            Module = '󰏗 ',
            Namespace = '󰅩 ',
            Null = '󰢤 ',
            Number = '󰎠 ',
            Object = '󰅩 ',
            Operator = '󰆕 ',
            Package = '󰆦 ',
            Property = ' ',
            Reference = '󰦾 ',
            Regex = ' ',
            Repeat = '󰑖 ',
            Scope = '󰅩 ',
            Snippet = '󰩫 ',
            Specifier = '󰦪 ',
            Statement = '󰅩 ',
            String = '󰉾 ',
            Struct = ' ',
            SwitchStatement = '󰺟 ',
            Text = ' ',
            Type = ' ',
            TypeParameter = '󰆩 ',
            Unit = ' ',
            Value = '󰎠 ',
            Variable = '󰀫 ',
            WhileStatement = '󰑖 ',
          },
        },
        ui = {
          bar = {
            separator = '  ',
            extends = '…',
          },
          menu = {
            separator = ' ',
            -- indicator = ' ',
            indicator = '',
            -- indicator = ' ',
          },
        },
    },
    menu = {
        -- When on, automatically set the cursor to the closest previous/next
        -- clickable component in the direction of cursor movement on CursorMoved
        quick_navigation = true,
        ---@type table<string, string|function|table<string, string|function>>
        keymaps = {
            ['<LeftMouse>'] = function()
                local menu = api.get_current_dropbar_menu()
                if not menu then
                    return
                end
                local mouse = vim.fn.getmousepos()
                if mouse.winid ~= menu.win then
                    local parent_menu = api.get_dropbar_menu(mouse.winid)
                    if parent_menu and parent_menu.sub_menu then
                        parent_menu.sub_menu:close()
                    end
                    if vim.api.nvim_win_is_valid(mouse.winid) then
                        vim.api.nvim_set_current_win(mouse.winid)
                    end
                    return
                end
                menu:click_at({ mouse.line, mouse.column }, nil, 1, 'l')
            end,
            ['<CR>'] = confirm,
            ['i'] = confirm,
            ['<esc>'] = quit_curr,
            ['q'] = quit_curr,
            ['n'] = quit_curr,
            ['<MouseMove>'] = function()
                local menu = api.get_current_dropbar_menu()
                if not menu then
                    return
                end
                local mouse = vim.fn.getmousepos()
                if mouse.winid ~= menu.win then
                    return
                end
                menu:update_hover_hl({ mouse.line, mouse.column - 1 })
            end,
        },
    },
})

