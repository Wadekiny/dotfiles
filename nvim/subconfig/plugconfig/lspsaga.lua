
--require('lspsaga').init_lsp_saga({ 
require('lspsaga').setup({ 

--border_style = "double",
--the range of 0 for fully opaque window (disabled) to 100 for fully
--transparent background. Values between 0-30 are typically most useful.
--saga_winblend = 70,
symbol_in_winbar = {
    in_custom = true,
    --enable = true,
    separator = '  ',
    --show_file = true,
    ---- define how to customize filename, eg: %:., %
    ---- if not set, use default value `%:t`
    ---- more information see `vim.fn.expand` or `expand`
    ----  only valid after set `show_file = true`
    --file_formatter = "%:p",
    --click_support = false,


},

})





local function get_file_name(include_path)
    local file_name = require('lspsaga.symbolwinbar').get_file_name()
    if vim.fn.bufname '%' == '' then return '' end
    if include_path == false then return file_name end
    -- Else if include path: ./lsp/saga.lua -> lsp > saga.lua
    local sep = vim.loop.os_uname().sysname == 'Windows' and '\\' or '/'
    --local path_list = vim.split(string.gsub(vim.fn.expand '%:~:.:h', '%%', ''), sep)
    local path_list = vim.split(string.gsub(vim.fn.expand '%:p:h', '%%', ''), sep)
    local file_path = ''
    local cnt=0
    for _, cur in ipairs(path_list) do
        if cnt == 0
        then
            file_path = (cur == '.' or cur == '~') and '' or
                    file_path .. cur .. '' .. '%#LspSagaWinbarSep#▊%*' .. ' %*'
        else
            file_path = (cur == '.' or cur == '~') and '' or
                    file_path .. cur .. ' ' .. '%#LspSagaWinbarSep#>%*' .. ' %*'
        end
        cnt = cnt + 1
    end
    file_name = string.gsub(file_name,"DevIcon.-#","LspSagaDevIcon#")--为了改背景颜色
    return file_path .. file_name

end

local function config_winbar_or_statusline()
    local exclude = {
        ['terminal'] = true,
        ['toggleterm'] = true,
        ['prompt'] = true,
        ['NvimTree'] = true,
        ['help'] = true,
        --['dap-repl'] = true,
    } -- Ignore float windows and exclude filetype
    if vim.api.nvim_win_get_config(0).zindex or exclude[vim.bo.filetype] then
        vim.wo.winbar = ''
    else
        local ok, lspsaga = pcall(require, 'lspsaga.symbolwinbar')
        local sym
        if ok then sym = lspsaga.get_symbol_node() end
        local win_val = ''
        win_val = get_file_name(true) -- set to true to include path
        if sym ~= nil then win_val = win_val .. sym end
        win_val = string.gsub(win_val,"LspSaga.-#","LspSagaWinBar#")--为了改背景颜色,替换颜色分组
        --vim.notify(win_val)
        vim.wo.winbar = win_val
        -- if work in statusline
        -- vim.wo.stl = win_val
    end
end

local events = { 'BufEnter', 'BufWinEnter', 'CursorMoved' }

vim.api.nvim_create_autocmd(events, {
    pattern = '*',
    callback = function() config_winbar_or_statusline() end,
})

vim.api.nvim_create_autocmd('User', {
    pattern = 'LspsagaUpdateSymbol',
    callback = function() config_winbar_or_statusline() end,
})

vim.cmd("highlight WinBar guibg='#112255'")
vim.cmd("highlight LspSagaWinBar guibg='#112255'")

--vim.cmd("highlight WinBar guibg='#07090c'")
--vim.cmd("highlight LspSagaWinBar guibg='#07090c'")
