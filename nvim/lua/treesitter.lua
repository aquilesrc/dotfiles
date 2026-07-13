----------------
-- Treesitter --
----------------
vim.api.nvim_create_autocmd("FileType", {
    pattern = "go",
    callback = function()
        vim.treesitter.start()
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "rust",
    callback = function()
        vim.treesitter.start()
    end,
})

-- vim.treesitter.start()
