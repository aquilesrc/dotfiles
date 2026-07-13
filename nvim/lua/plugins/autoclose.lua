vim.pack.add({
    { src = 'https://github.com/m4xshen/autoclose.nvim' },
})

require('autoclose').setup({
    keys = {
        ['('] = { escape = false, close = true, pair = '()' },
        ['['] = { escape = false, close = true, pair = '[]' },
        ['{'] = { escape = false, close = true, pair = '{}' },
        ['<'] = { escape = false, close = false, pair = '<>' },

        ['`'] = { escape = true, close = true, pair = '``' },
        ['"'] = { escape = true, close = true, pair = '""' },
        ["'"] = { escape = true, close = true, pair = "''" },

        ['*'] = { escape = true, close = true, pair = '**', enabled_filetypes = { 'markdown' } },
        ['~'] = { escape = true, close = true, pair = '~~', enabled_filetypes = { 'markdown' } },
        ['_'] = { escape = true, close = true, pair = '__', enabled_filetypes = { 'markdown' } },
    },
    options = {
        -- disabled_filetypes = { 'text' },
        disable_when_touch = false,
        touch_regex = '[%w(%[{]',
        pair_spaces = false,
        auto_indent = true,
        disable_command_mode = false,
    },
})
