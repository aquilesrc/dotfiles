vim.pack.add({
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/nvim-telescope/telescope.nvim" },
})

pcall(require('telescope').load_extension, 'fzf')
require('telescope').setup({
    defaults = {
        layout_strategy = 'flex',
        layout_config = {
            bottom_pane = {
                height = 20,
                preview_cutoff = 200,
                prompt_position = "bottom"
            },
            center = {
                height = 0.6,
                preview_cutoff = 40,
                prompt_position = "top",
                width = 0.5
            },
            cursor = {
                height = 0.9,
                preview_cutoff = 40,
                width = 0.8
            },
            horizontal = {
                height = 0.9,
                preview_cutoff = 80,
                prompt_position = "bottom",
                width = 0.9
            },
            vertical = {
                height = 0.9,
                preview_cutoff = 20,
                prompt_position = "bottom",
                width = 0.9
            }
        },

        file_ignore_patterns = {
            "go/pkg", "Videos", "Pictures", "Jogos", "Music", ".doc", ".docx",
            ".odt", ".out", ".mp3", ".exe", "Desktop"
        }
    },

    pickers = {
        diagnostics = {
            -- theme = "ivy",
            layout_strategy = "vertical",
        },

        oldfiles = {
            cwd_only = false,
        }
    },
})

-----------------
-- Keybindings --
-----------------
local map = vim.keymap.set
local builtin = require('telescope.builtin')

-- Pickers
-- map('n', '<leader>t', vim.cmd.Telescope)
map('n', '<leader><space>', builtin.buffers)
map('n', '<leader>sf', builtin.find_files)
map('n', '<leader>sr', builtin.oldfiles)
-- map('n', '<leader>/', builtin.current_buffer_fuzzy_find)
map('n', '<leader>;', builtin.current_buffer_fuzzy_find)
map('n', '<leader>sg', builtin.live_grep, { desc = 'Live Grep' })
map('n', '<leader>sm', builtin.man_pages)
map('n', '<leader>sd', builtin.diagnostics)
-- map('n', '<leader>sw', builtin.grep_string)
-- map('n', '<leader>sh', builtin.help_tags)
-- map('n', '<leader>gf', builtin.git_files)
-- map('n', '<leader>sg', builtin.live_grep)
-- map('n', '<leader>sr', builtin.resume)
-- vim.keymap.set('n', '<leader>/', function()
--     builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
--         winblend = 10,
--         previewer = true,
--     })
-- end, { desc = '[/] Fuzzily search in current buffer' })

-- Jumps
map("n", 'gd', builtin.lsp_definitions)     -- Jump to definition
map("n", 'gr', builtin.lsp_references)      -- List lsp references
map("n", 'gi', builtin.lsp_implementations) -- List lsp implementations
