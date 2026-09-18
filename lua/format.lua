vim.pack.add({
  "https://github.com/stevearc/conform.nvim",
})

require("conform").setup({
  formatters_by_ft={
    lua = {"stylelua"},
    python = {"black"}
  }
})


-- binds

vim.keymap.set('n', '<leader>fm', function() require("conform").format() end, { desc = '[F]or[M]at buffer' })

