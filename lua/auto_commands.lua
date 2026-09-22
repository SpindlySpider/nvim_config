--- File for auto commands ---

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- pattern to start treesitter on multiple file types
vim.api.nvim_create_autocmd("FileType",{
  pattern = {"python"},
  callback = function()
    vim.treesitter.start()
  end
})
