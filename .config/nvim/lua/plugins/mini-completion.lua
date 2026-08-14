vim.pack.add({
    { src = 'https://github.com/nvim-mini/mini.completion', version = 'stable' },
})

require("mini.completion").setup({
    -- Delay (debounce type, in ms) between certain Neovim event and action.
    -- This can be used to (virtually) disable certain automatic actions by
    -- setting very high delay time (like 10^7).
    delay = { completion = 100, info = 100, signature = 50 },

    -- Configuration for action windows:
    -- - `height` and `width` are maximum dimensions.
    -- - `border` defines border (as in `nvim_open_win()`; default "single").
    window = {
        info = { height = 25, width = 80, border = "single" },
        signature = { height = 25, width = 40, border = "single" },
    },

    lsp_completion = {
        source_func = 'completefunc', -- 'completefunc', 'omnifunc'.
        auto_setup = true,
        process_items = nil,
        snippet_insert = nil,
    },

    fallback_action = '<C-n>',

    mappings = {
        -- Force two-step/fallback completions
        force_twostep = '<C-Space>',
        force_fallback = '<A-Space>',

        -- Scroll info/signature window down/up. When overriding, check for
        -- conflicts with built-in keys for popup menu (like `<C-u>`/`<C-o>`
        -- for 'completefunc'/'omnifunc' source function; or `<C-n>`/`<C-p>`).
        scroll_down = '<C-d>',
        scroll_up = '<C-u>',
    },
})
