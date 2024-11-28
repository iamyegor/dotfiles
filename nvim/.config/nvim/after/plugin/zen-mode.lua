vim.api.nvim_create_autocmd("VimEnter", {
    pattern = "*",
    command = "ZenMode"
})

require("zen-mode").setup {
  on_open = function(_)
    vim.cmd 'cabbrev <buffer> q let b:quitting = 1 <bar> q'
    vim.cmd 'cabbrev <buffer> wq let b:quitting = 1 <bar> wq'
  end,
  on_close = function()
    if vim.b.quitting == 1 then
      vim.b.quitting = 0
      vim.cmd 'q'
    end
  end,
}
