vim.pack.add({
    -- { src = "https://github.com/bluz71/vim-moonfly-colors" },
    -- { src = "https://github.com/aquilesrc/gruber-black.nvim" },
    { src = "~/Projects/gruber-black.nvim" },
})

require("gruber-black").setup({
    transparent_background = true,
    bold_keywords = true,
    italic_strings = false,
    italic_comments = false,
    colored_cursor = false,

    highlight_functions = false,
    highlight_types = true
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
--         vim.api.nvim_set_hl(0, "StatusLine", { bg = "#181818" })
--         vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#181818" })
--         vim.api.nvim_set_hl(0, "CursorLine", { bg = "#181818" })
--         -- vim.api.nvim_set_hl(0, "CursorLineNr", { link = "MoonflySky" })
--     end,
--     group = custom_highlight,
-- })

vim.cmd.colorscheme "gruber-black"
