-- Lua
-- require('onedark').setup {
--      style = 'warmer'
-- }
-- require('onedark').load()

-- require("catppuccin").setup({
--     flavour = "mocha",
--     transparent_background = true
-- })

-- vim.cmd.colorscheme "catppuccin"

vim.o.background = 'dark'

local c = require('vscode.colors').get_colors()
require('vscode').setup({
    transparent = true,
    italic_comments = true,
    underline_links = true,
    disable_nvimtree_bg = true,
    group_overrides = {
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
    }
})
-- require('vscode').load()

-- load the theme without affecting devicon colors.
vim.cmd.colorscheme "vscode"
