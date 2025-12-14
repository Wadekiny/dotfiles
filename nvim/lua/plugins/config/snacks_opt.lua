return {
    -- bigfile = { enabled = true },
    dashboard = { enabled = true },
    explorer = { enabled = true },
    -- indent = { enabled = true },
    -- input = { enabled = true },
    picker = { 
        enabled = true,
        sources = {
            explorer = {
            }
        }
    },
    -- notifier = { enabled = true },
    -- quickfile = { enabled = true },
    -- scope = {enabled=true    },
    scroll = { enabled = true },
    statuscolumn = { 
        -- enabled = true,
        left = { "mark", "sign",}, -- priority of signs on the left (high to low)
        right = {"git", "fold"}, -- priority of signs on the right (high to low)
        folds = {
            open = true, -- show open fold icons
            git_hl = false, -- use Git Signs hl for fold icons
        },
        git = { 
            -- patterns to match Git signs
            patterns = { "GitSign", "MiniDiffSign" },
        },
        refresh = 50, -- refresh at most every 50ms
    }
    -- words = { enabled = true },
}
