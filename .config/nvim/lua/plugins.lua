-------------
-- Plugins --
-------------
vim.api.nvim_create_user_command("UpdatePlugins", function()
    vim.pack.update()
end, { desc = "Update all plugins" })

require("plugins.colorscheme")
require("plugins.fzf")
require("plugins.harpoon-cfg")
require("plugins.mini-pairs")
require("plugins.mini-completion")
require("plugins.mini-files")

-- require("plugins.cmp")
