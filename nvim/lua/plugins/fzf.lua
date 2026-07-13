vim.pack.add({ { src = 'https://github.com/ibhagwan/fzf-lua' }, })

local actions = require('fzf-lua.actions')
require('fzf-lua').setup({
    keymap = {
        builtin = {
            ['<C-d>'] = 'preview-page-down',
            ['<C-u>'] = 'preview-page-up',
            ['<C-p>'] = 'toggle-preview',
        },
        fzf = {
            ['ctrl-a'] = 'toggle-all',
            ['ctrl-t'] = 'first',
            ['ctrl-g'] = 'last',
            -- ['ctrl-d'] = 'half-page-down',
            -- ['ctrl-u'] = 'half-page-up',
        }
    },
    actions = {
        files = {
            ['ctrl-q'] = actions.file_sel_to_qf,
            ['ctrl-n'] = actions.toggle_ignore,
            ['ctrl-h'] = actions.toggle_hidden,
            ['enter']  = actions.file_edit_or_qf,
        }
    },
    winopts = {
        height     = 0.90,
        width      = 0.90,
        row        = 0.35,
        col        = 0.50,
        border     = "rounded",
        backdrop   = 90,
        fullscreen = true,
        treesitter = {
            enabled    = true,
            fzf_colors = { ["hl"] = "-1:reverse", ["hl+"] = "-1:reverse" }
        },
        preview    = {
            border       = "rounded",
            wrap         = false,
            hidden       = false,
            vertical     = "down:45%",  -- up|down:size
            horizontal   = "right:60%", -- right|left:size
            layout       = "flex",      -- horizontal|vertical|flex
            flip_columns = 100,         -- #cols to switch to horizontal on flex
            -- Only used with the builtin previewer:
            title        = true,        -- preview border title (file/buf)?
            title_pos    = "center",    -- left|center|right, title alignment
            scrollbar    = "float",     -- `false` or string:'float|border'
            -- float:  in-window floating border
            -- border: in-border "block" marker
            scrolloff    = -1, -- float scrollbar offset from right
            -- applies only when scrollbar = 'float'
            delay        = 20, -- delay(ms) displaying the preview
            -- prevents lag on fast scrolling
            winopts      = {   -- builtin previewer window options
                number         = true,
                relativenumber = false,
                cursorline     = true,
                cursorlineopt  = "both",
                cursorcolumn   = false,
                signcolumn     = "no",
                list           = false,
                foldenable     = false,
                foldmethod     = "manual",
            },
        },
    }
})

local map = vim.keymap.set

map('n', '<leader>sf', '<cmd>FzfLua files<CR>')
map('n', '<leader>sr', '<cmd>FzfLua oldfiles<CR>')
map('n', '<leader><space>', '<cmd>FzfLua buffers<CR>')
map('n', '<leader>sg', '<cmd>FzfLua live_grep<CR>')
map('n', '<leader>sd', '<cmd>FzfLua diagnostics_workspace<CR>')
