---------
-- LSP --
---------
vim.lsp.config['lua_ls'] = {
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
    root_markers = { '.luarc.json', '.git' },
    settings = {
        Lua = {
            workspace = {
                library = {
                    -- '/usr/share/lua/5.5',
                    '/home/aquilesrc/.luarocks/share/lua/5.5'
                }
            },
            diagnostics = {
                globals = { 'vim' }
            },
        }
    }
}

vim.lsp.config['gopls'] = {
    cmd = { 'gopls' },
    filetypes = { 'go', 'gomod' },
    settings = { gopls = { staticcheck = true, gofumpt = true, usePlaceholders = true } }
}

vim.lsp.config['clangd'] = {
    cmd = { 'clangd' },
    filetypes = { 'c', 'cpp', },
}

vim.lsp.config['rust_analyzer'] = {
    cmd = { 'rust-analyzer' },
    filetypes = { 'rust' },
}

vim.lsp.config['pylsp'] = {
    cmd = { 'pylsp' },
    filetypes = { 'python' },
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
            },
        },
    },
}

vim.lsp.config['marksman'] = {
    cmd = { 'marksman' },
    filetypes = { 'markdown', },
}

vim.lsp.config['bash-lsp'] = {
    cmd = { 'bash-language-server' },
    filetypes = { 'bash', 'sh' },
}

vim.lsp.enable({ 'lua_ls', 'clangd', 'gopls', 'rust_analyzer', 'pylsp', 'marksman', 'bash-lsp' })
