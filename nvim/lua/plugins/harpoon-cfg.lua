vim.pack.add({
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/ThePrimeagen/harpoon", version = "harpoon2" },
})

local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-1>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-2>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-3>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-4>", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<C-5>", function() harpoon:list():select(5) end)
vim.keymap.set("n", "<C-6>", function() harpoon:list():select(6) end)
vim.keymap.set("n", "<C-7>", function() harpoon:list():select(7) end)
vim.keymap.set("n", "<C-8>", function() harpoon:list():select(8) end)
vim.keymap.set("n", "<C-9>", function() harpoon:list():select(9) end)
vim.keymap.set("n", "<C-10>", function() harpoon:list():select(10) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-h>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():next() end)
