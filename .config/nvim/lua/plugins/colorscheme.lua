vim.pack.add({
    -- { src = 'https://github.com/bluz71/vim-moonfly-colors' },
    { src = 'https://github.com/blazkowolf/gruber-darker.nvim' },
    -- { src = 'https://github.com/navarasu/onedark.nvim' },
})

-- vim.g.moonflyTransparent = true
-- vim.g.moonflyItalics = false
-- vim.g.moonflyNormalFloat = false
-- vim.g.moonflyNormalPmenu = false
-- vim.g.moonflyCursorColor = true
-- vim.g.moonflyTerminalColors = true
-- vim.g.moonflyUndercurls = true
-- vim.g.moonflyUnderlineMatchParen = false
-- vim.g.moonflyWinSeparator = 2
-- vim.g.moonflyVirtualTextColor = true
--
-- require("moonfly").custom_colors({
--     white = "#dddddd",
--     blue = "#74b2ff",
--     sky = "#a1c0eb",
--     yellow = "#e3c78a",
--     cranberry = "#95c0d5",
--     grey11 = "#252525",
--     grey7 = "#1a1a1a"
-- })
--
-- local custom_highlight = vim.api.nvim_create_augroup("CustomHighlight", {})
-- vim.api.nvim_create_autocmd("ColorScheme", {
--     pattern = "moonfly",
--     callback = function()
--         vim.api.nvim_set_hl(0, "@markup.heading.1.markdown", { link = "MoonflySky" })
--         vim.api.nvim_set_hl(0, "@markup.heading.2.markdown", { link = "MoonflyTurquoise" })
--         vim.api.nvim_set_hl(0, "@markup.heading.3.markdown", { link = "MoonflyEmerald" })
--         vim.api.nvim_set_hl(0, "@markup.heading.4.markdown", { link = "MoonflyYellow" })
--         vim.api.nvim_set_hl(0, "@markup.heading.5.markdown", { link = "MoonflyOrange" })
--         vim.api.nvim_set_hl(0, "@markup.heading.6.markdown", { link = "MoonflyRed" })
--         vim.api.nvim_set_hl(0, "StatusLine", { bg = '#181818' })
--         vim.api.nvim_set_hl(0, "StatusLineNC", { bg = '#181818' })
--         vim.api.nvim_set_hl(0, "CursorLine", { bg = '#181818' })
--         -- vim.api.nvim_set_hl(0, "CursorLineNr", { link = 'MoonflySky' })
--     end,
--     group = custom_highlight,
-- })

-- require('onedark').setup {
--     style = 'dark', -- 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
--     transparent = true,
--     term_colors = false,
--
--     ending_tildes = false,
--     cmp_itemkind_reverse = false,
--
--     code_style = {
--         comments = 'none',
--         keywords = 'none',
--         functions = 'none',
--         strings = 'none',
--         variables = 'none'
--     },
--
--     colors = {
--         dark_grey = '#1e2127',
--         red = '#e06c75',
--         green = '#98c379',
--         blue = '#61afef',
--         yellow = '#e5c07b',
--         purple = '#c678dd'
--     },
--
--     highlights = {
--         StatusLine                     = { bg = 'none' },
--         StatusLineNC                   = { bg = 'none' },
--         CursorLine                     = { bg = 'none' },
--         CursorLineNr                   = { fg = '$blue' },
--         NormalFloat                    = { bg = '$dark_grey' },
--         FloatBorder                    = { bg = 'none' },
--         ['@markup.heading.1.markdown'] = { fg = '$blue', fmt = 'bold' },
--         ['@markup.heading.4.markdown'] = { fg = '$blue', fmt = 'bold' },
--         ['@markup.quote.markdown']     = { fmt = 'none' },
--         DiagnosticVirtualTextError     = { fg = '$red', bg = "$dark_grey" },
--         DiagnosticVirtualTextWarn      = { fg = '$yellow', bg = "$dark_grey" },
--         DiagnosticVirtualTextInfo      = { fg = '$blue', bg = "$dark_grey" },
--         DiagnosticVirtualTextHint      = { fg = '$purple', bg = "$dark_grey" },
--         DiagnosticVirtualTextOk        = { fg = '$green', bg = "$dark_grey" },
--     },
-- }

require('gruber-darker').setup({
    bold = true,
    invert = {
        signs = false,
        tabline = false,
        visual = false,
    },
    italic = {
        strings = false,
        comments = false,
        operators = false,
        folds = false,
    },
    undercurl = true,
    underline = true,
})

local function override_highlights()
    vim.api.nvim_set_hl(0, "GruberDarkerQuartz", { fg = "#a4baaf", })
    vim.api.nvim_set_hl(0, "GruberDarkerDarkNiagara", { fg = "#9dadd1", })
    vim.api.nvim_set_hl(0, "Normal", { bg = "none", })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none", })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#282828", })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#282828", })
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#646464", })
end
override_highlights()

vim.api.nvim_create_autocmd("ColorScheme", {
    callback = override_highlights,
})

vim.cmd.colorscheme "gruber-darker"
