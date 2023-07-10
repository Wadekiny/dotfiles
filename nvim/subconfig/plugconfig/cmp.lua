local cmp = require'cmp'

local kind_icons = {
  Text = "",
  Method = "m",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
}
-- find more here: https://www.nerdfonts.com/cheat-sheet
cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<Tab>'] = cmp.mapping.select_next_item(),
      ['<S-Tab>'] = cmp.mapping.select_prev_item(),
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),

    formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      -- Kind icons
      vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
      vim_item.menu = ({
        nvim_lsp = "[LSP]",
        ultisnips = "[Snippet]",
        buffer = "[Buffer]",
        path = "[Path]",
      })[entry.source.name]
      return vim_item
    end,
    },

    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  -- require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
  --   capabilities = capabilities
  -- }






-- local kind_icons = {
--   Text = "",
--   Method = "m",
--   Function = "",
--   Constructor = "",
--   Field = "",
--   Variable = "",
--   Class = "",
--   Interface = "",
--   Module = "",
--   Property = "",
--   Unit = "",
--   Value = "",
--   Enum = "",
--   Keyword = "",
--   Snippet = "",
--   Color = "",
--   File = "",
--   Reference = "",
--   Folder = "",
--   EnumMember = "",
--   Constant = "",
--   Struct = "",
--   Event = "",
--   Operator = "",
--   TypeParameter = "",
-- }
-- -- find more here: https://www.nerdfonts.com/cheat-sheet




-- -- local status_luasnip_ok, luasnip = pcall(require, "luasnip")
-- -- if not status_luasnip_ok then
-- --   return
-- -- end
-- --
-- -- require("luasnip.loaders.from_vscode").lazy_load() -- load freindly-snippets
--
--
--
-- -- NOTE: cmp --
--
-- local t = function(str)
--   return vim.api.nvim_replace_termcodes(str, true, true, true)
-- end
--
-- local cmp = require('cmp')
--
-- cmp.setup{
--   snippet = {
--     expand = function(args)
--       vim.fn["UltiSnips#Anon"](args.body)
--     end,
--   },
--   window = {
--     completion = cmp.config.window.bordered(),
--     documentation = cmp.config.window.bordered(),
--   },
--   mapping = {
--     ["<Tab>"] = cmp.mapping({
--       c = function()
--         if cmp.visible() then
--           cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
--         else
--           cmp.complete()
--         end
--       end,
--       i = function(fallback)
--         if cmp.visible() then
--           cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
--         else
--           fallback()
--         end
--       end
--     }),
--     ["<S-Tab>"] = cmp.mapping({
--       c = function()
--         if cmp.visible() then
--           cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
--         else
--           cmp.complete()
--         end
--       end,
--       i = function(fallback)
--         if cmp.visible() then
--           cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
--         else
--           fallback()
--         end
--       end
--     }),
--     ['<Down>'] = cmp.mapping(cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }), {'i'}),
--     ['<Up>'] = cmp.mapping(cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }), {'i'}),
--     ['<C-n>'] = cmp.mapping({
--       c = function()
--         if cmp.visible() then
--           cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
--         else
--           vim.api.nvim_feedkeys(t('<Down>'), 'n', true)
--         end
--       end,
--       i = function(fallback)
--         if cmp.visible() then
--           cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
--         else
--           fallback()
--         end
--       end
--     }),
--     ['<C-p>'] = cmp.mapping({
--       c = function()
--         if cmp.visible() then
--           cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
--         else
--           vim.api.nvim_feedkeys(t('<Up>'), 'n', true)
--         end
--       end,
--       i = function(fallback)
--         if cmp.visible() then
--           cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
--         else
--           fallback()
--         end
--       end
--     }),
--     ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), {'i', 'c'}),
--     ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), {'i', 'c'}),
--     --['<C-e>'] = cmp.mapping(cmp.mapping.complete(), {'i', 'c'}),
--     --['<C-e>'] = cmp.mapping({ i = cmp.mapping.close(), c = cmp.mapping.close() }),
--     ['<CR>'] = cmp.mapping({
--       i = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
--       c = function(fallback)
--         if cmp.visible() then
--           cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true})
--         else
--           fallback()
--         end
--       end
--     }),
--   },
--
--   formatting = {
--     fields = { "kind", "abbr", "menu" },
--     format = function(entry, vim_item)
--       -- Kind icons
--       vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
--       vim_item.menu = ({
--         nvim_lsp = "[LSP]",
--         ultisnips = "[Snippet]",
--         buffer = "[Buffer]",
--         path = "[Path]",
--       })[entry.source.name]
--       return vim_item
--     end,
--   },
--
--   sources = cmp.config.sources({
--     { name = 'nvim_lsp' },
--     { name = 'ultisnips' },
--   }, {
--     { name = 'buffer' },
--     { name = 'path' },
--   })
-- }
--
-- -- Set configuration for specific filetype.
-- cmp.setup.filetype('gitcommit', {
--   sources = cmp.config.sources({
--     { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
--   }, {
--     { name = 'buffer' },
--   })
-- })
--
-- -- Use buffer source foj `/` (if you enabled `native_menu`, this won't work anymore).
-- cmp.setup.cmdline('/', {
--   completion = { autocomplete = true },
--   sources = {
--     { name = 'buffer' }
--   }
-- })
--
-- -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
-- cmp.setup.cmdline(':', {
--   completion = { autocomplete = true },
--   sources = cmp.config.sources({
--     { name = 'path' }
--   }, {
--     { name = 'cmdline' }
--   })
-- })
