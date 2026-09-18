vim.pack.add {
  'https://github.com/stevearc/conform.nvim',
}

require('conform').setup {
  formatters_by_ft = {
    lua = { 'stylua' },
    python = { 'black' },
  },
  formatters = {
    -- isort = {
    -- command = ""
    -- }
  },
}

-- binds

vim.keymap.set('n', '<leader>fm', function()
  require('conform').format()
end, { desc = '[F]or[M]at buffer' })
