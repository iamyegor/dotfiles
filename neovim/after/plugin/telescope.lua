local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-e>', builtin.find_files, {})
vim.keymap.set('n', '<C-o>', builtin.oldfiles, {})

vim.keymap.set('n', '<leader>t', function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.keymap.set('n', '<C-p>', builtin.git_files, {})

