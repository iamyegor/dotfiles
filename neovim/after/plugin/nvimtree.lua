-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- require("nvim-tree").setup({
--  on_attach = function(bufnr)
--    local api = require('nvim-tree.api')
--
--    local function opts(desc)
--      return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
--    end
--
--    api.config.mappings.default_on_attach(bufnr)
--    vim.keymap.del('n', '<C-e>', { buffer = bufnr })
--  end
-- })

-- vim.keymap.set('n', '<C-n>', vim.cmd.NvimTreeToggle)
-- vim.keymap.set('n', '<C-f>', vim.cmd.NvimTreeFindFile)
-- vim.opt.termguicolors = true

-- vim.cmd [[
-- hi NvimTreeNormal guibg=NONE
-- ]]
