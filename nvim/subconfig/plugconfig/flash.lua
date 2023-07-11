flash = require("flash")
flash.setup{
    modes = {
        -- options used when flash is activated through
        -- a regular search with `/` or `?`
        search = {
          -- when `true`, flash will be activated during regular search by default.
          -- You can always toggle when searching with `require("flash").toggle()`
          enabled = true,
          highlight = { backdrop = false },
          jump = { history = true, register = true, nohlsearch = true },
          search = {
            -- `forward` will be automatically set to the search direction
            -- `mode` is always set to `search`
            -- `incremental` is set to `true` when `incsearch` is enabled
          },
        },
        -- options used when flash is activated through
        -- `f`, `F`, `t`, `T`, `;` and `,` motions
        char = {
          enabled = true,
          -- dynamic configuration for ftFT motions
          config = function(opts)
            -- autohide flash when in operator-pending mode
            opts.autohide = vim.fn.mode(true):find("no") and vim.v.operator == "y"

            -- disable jump labels when enabled and when using a count
            opts.jump_labels = opts.jump_labels and vim.v.count == 0

            -- Show jump labels only in operator-pending mode
            -- opts.jump_labels = vim.v.count == 0 and vim.fn.mode(true):find("o")
          end,
          -- hide after jump when not using jump labels
          autohide = false,
          -- show jump labels
          jump_labels = false,
          -- set to `false` to use the current line only
          multi_line = true,
          -- When using jump labels, don't use these keys
          -- This allows using those keys directly after the motion
          label = { exclude = "hjkliardc" },
          -- by default all keymaps are enabled, but you can disable some of them,
          -- by removing them from the list.
          -- If you rather use another key, you can map them
          -- to something else, e.g., { [";"] = "L", [","] = H }
          -- keys = { "f", "F", "t", "T", ";", "," },
          keys = { "f", "F"},
          ---@alias Flash.CharActions table<string, "next" | "prev" | "right" | "left">
          -- The direction for `prev` and `next` is determined by the motion.
          -- `left` and `right` are always left and right.
          char_actions = function(motion)
            return {
              [";"] = "next", -- set to `right` to always go right
              [","] = "prev", -- set to `left` to always go left
              -- clever-f style
              [motion:lower()] = "next",
              [motion:upper()] = "prev",
              -- jump2d style: same case goes next, opposite case goes prev
              -- [motion] = "next",
              -- [motion:match("%l") and motion:upper() or motion:lower()] = "prev",
            }
          end,
          search = { wrap = false },
          highlight = { backdrop = true },
          jump = { register = false },
        },
        -- options used for treesitter selections
        -- `require("flash").treesitter()`
        treesitter = {
          labels = "abcdefghijklmnopqrstuvwxyz",
          jump = { pos = "range" },
          search = { incremental = false },
          label = { before = true, after = true, style = "inline" },
          highlight = {
            backdrop = false,
            matches = false,
          },
        },
        treesitter_search = {
          jump = { pos = "range" },
          search = { multi_window = true, wrap = true, incremental = false },
          remote_op = { restore = true },
          label = { before = true, after = true, style = "inline" },
        },
        -- options used for remote flash
        remote = {
          remote_op = { restore = true, motion = true },
        },
      },
}
