----------------
-- Completion --
----------------
-- vim.opt.completeopt = { "menuone", "noselect", "popup" }
vim.opt.completeopt = { "fuzzy", "menuone", "noselect", "popup" }
vim.opt.autocomplete = true
vim.opt.pumheight = 7
vim.opt.pumwidth = 20
vim.opt.pumborder = "rounded"

vim.lsp.enable({ "lua_ls", "gopls", "clangd", "rust_analyzer" })

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(ev)
        vim.lsp.completion.enable(true, ev.data.client_id, ev.buf, {
            autotrigger = true,
            convert = function(item)
                local abbr = item.label
                abbr = abbr:gsub("%b()", ""):gsub("%b{}", "")
                abbr = abbr:match("[%w_.]+.*") or abbr
                abbr = #abbr > 15 and abbr:sub(1, 14) .. "…" or abbr

                local menu = item.detail or ""
                menu = #menu > 15 and menu:sub(1, 14) .. "…" or menu

                return {
                    abbr = abbr,
                    menu = menu,
                }
            end,
        })
    end,
})
