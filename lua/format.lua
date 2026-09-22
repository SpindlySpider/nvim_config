vim.pack.add {
  'https://github.com/stevearc/conform.nvim',
}

require('conform').setup {
  formatters_by_ft = {
    lua = { 'stylua' },
    python = { 'ruff_format', 'isort' },
  },
  -- formatters = {},
}

-- binds

-- https://github.com/stevearc/conform.nvim/blob/master/doc/recipes.md#format-command
vim.keymap.set('n', '<leader>fm', function()
  require('conform').format { async = true }
end, { desc = '[F]or[M]at buffer' })
