vim.pack.add({
    { src = "https://github.com/ms-jpq/coq_nvim" },
    { src = "https://github.com/ms-jpq/coq.artifacts" },
})

vim.g.coq_settings = {
    completion = {
        always = true,
        sticky_manual = true,
    },
    display = {
        ghost_text = {
            enabled = false,
            highlight_group = "Comment",
        },
        preview = {
            enabled = true,
            x_max_len = 88,
            border = "single", -- single, double, rounded, solid, shadow
            icons = "none",    -- none, short, long
            icons_pacing = 1,
            positions = {
                north = nil,
                south = 2,
                west = 3,
                east = 4
            }
        },
    }
}
