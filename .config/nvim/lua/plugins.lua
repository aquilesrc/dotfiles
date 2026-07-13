-------------
-- Plugins --
-------------
require('plugins.colorscheme')
-- require('plugins.telescope')
require('plugins.fzf')
require('plugins.cmp')
require('plugins.luasnip')
require('plugins.autoclose')
require('plugins.harpoon-cfg')
require('plugins.markdown')

vim.api.nvim_create_user_command('UpdatePlugins', function()
    vim.pack.update()
end, { desc = 'Update all plugins' })
