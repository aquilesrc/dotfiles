-----------------
-- Keybindings --
-----------------
vim.g.mapleader = " "
local map = vim.keymap.set

-- Hide search matching highlight on <Esc>
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Re-center on scroll
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

map("n", "<leader>c", ":")        -- Enter command mode
map("n", "<leader>e", vim.cmd.Ex) -- Open netrw

-- Buffer Bindings
map("n", "<leader>w", vim.cmd.write)   -- Write current buffer changes
map("n", "<leader>q", vim.cmd.quit)    -- Close current buffer
map("n", "<leader>k", vim.cmd.bd)      -- Kill current buffer
map("n", "<leader>W", vim.cmd.wall)    -- Write all buffers changes
map("n", "<leader>Q", vim.cmd.quitall) -- Close all buffers

-- Insert mode
map("i", "<C-l>", "<Escape>%%a")

-- LSP
map("n", "<leader>f", vim.lsp.buf.format) -- Format current buffer
map("n", "K", vim.lsp.buf.hover)          -- Hover documentation

-- Macros
map("n", "<leader>rs", "<cmd>%s/ //g<CR>") -- Remove spaces

map("n", "ç", "/")
map("n", "H", "_") -- Shift+h - Jump to the first character of the line
map("n", "L", "$") -- Shift+l - Jump to the end of the line
