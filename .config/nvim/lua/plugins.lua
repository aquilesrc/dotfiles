-------------
-- Plugins --
-------------
vim.api.nvim_create_user_command("UpdatePlugins", function()
    vim.pack.update()
end, { desc = "Update all plugins" })

require("plugins.colorscheme")
-- require("plugins.telescope")
require("plugins.fzf")
require("plugins.coq")
require("plugins.autoclose")
require("plugins.harpoon-cfg")
-- require("plugins.markdown")

