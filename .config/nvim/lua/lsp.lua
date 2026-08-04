---------
-- LSP --
---------
vim.lsp.config["lua_ls"] = {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { ".luarc.json", ".git" },
    settings = {
        Lua = {
            workspace = {
                library = {
                    -- "/usr/share/lua/5.5",
                    "/home/aquilesrc/.luarocks/share/lua/5.5"
                }
            },
            diagnostics = {
                globals = { "vim" }
            },
            format = {
                enable = true,
                defaultConfig = {
                    ident_style = "space",
                    ident_size = "4",
                    align_call_args = false,
                    align_function_params = true,
                    align_continuous_assign_statement = true,
                    align_continuous_rect_table_field = true,
                    align_if_branch = false,
                    align_array_table = true,
                    align_continuous_similar_call_args = false,
                    align_continuous_inline_comment = true,
                    align_chain_expr = "none"
                }
            },
        }
    }
}

vim.lsp.config["gopls"] = {
    cmd = { "gopls" },
    filetypes = { "go", "gomod" },
    settings = { gopls = { staticcheck = true, gofumpt = true, usePlaceholders = true } }
}

vim.lsp.config["clangd"] = {
    cmd = { "clangd" },
    filetypes = { "c", "cpp", },
}

vim.lsp.config["rust_analyzer"] = {
    cmd = { "rust-analyzer" },
    filetypes = { "rust" },
}

vim.lsp.config["pylsp"] = {
    cmd = { "pylsp" },
    filetypes = { "python" },
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
            },
        },
    },
}

vim.lsp.config["marksman"] = {
    cmd = { "marksman" },
    filetypes = { "markdown", },
}

vim.lsp.config["bash-lsp"] = {
    cmd = { "bash-language-server" },
    filetypes = { "bash", "sh" },
}

vim.lsp.enable({ "lua_ls", "clangd", "gopls", "rust_analyzer", "pylsp", "marksman", "bash-lsp" })
