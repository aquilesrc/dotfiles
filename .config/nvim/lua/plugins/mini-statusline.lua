vim.pack.add({
    { src = 'https://github.com/nvim-mini/mini.statusline', version = 'stable' },
})

require("mini.statusline").setup({
    content = {
        active = nil,
        inactive = nil,
    },

    use_icons = true,
})
