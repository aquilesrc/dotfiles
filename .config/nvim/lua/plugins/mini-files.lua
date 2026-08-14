vim.pack.add({
    { src = 'https://github.com/nvim-mini/mini.files', version = 'stable' },
})

require("mini.files").setup({
    content = {
        filter = nil,    -- Predicate for which file system entries to show
        highlight = nil, -- Highlight group to use for a file system entry
        prefix = nil,    -- Prefix text and highlight to show to the left of file system entry
        sort = nil,      -- Order in which to show file system entries
    },

    mappings = {
        close       = 'q',
        go_in       = 'l',
        go_in_plus  = 'L',
        go_out      = 'h',
        go_out_plus = 'H',
        mark_goto   = "'",
        mark_set    = 'm',
        reset       = '<BS>',
        reveal_cwd  = '@',
        show_help   = 'g?',
        synchronize = '=',
        trim_left   = '<',
        trim_right  = '>',
    },

    options = {
        permanent_delete = true,        -- Whether to delete permanently or move into module-specific trash
        use_as_default_explorer = true, -- Whether to use for editing directories
        lsp_timeout = 1000,             -- Timeout for synchronous LSP integration requests
    },

    windows = {
        max_number = math.huge, -- Maximum number of windows to show side by side
        preview = false,        -- Whether to show preview of file/directory under cursor
        width_focus = 50,       -- Width of focused window
        width_nofocus = 15,     -- Width of non-focused window
        width_preview = 25,     -- Width of preview window
    },
})
