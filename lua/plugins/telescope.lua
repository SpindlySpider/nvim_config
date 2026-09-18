vim.pack.add({
  "https://github.com/nvim-telescope/telescope.nvim",
  -- dependencies
  "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
})

telescope = require("telescope.builtin")



--- binds
vim.keymap.set('n', 'gd', telescope.lsp_definitions , { desc = '[G]oto [D]efinition' })
vim.keymap.set('n', 'gr', telescope.lsp_references , { desc = '[G]oto [R]eferences' })
vim.keymap.set('n', 'gI', telescope.lsp_implementations , { desc = '[G]oto [I]mplementation' })
vim.keymap.set('n', '<leader>D', telescope.lsp_type_definitions , { desc = 'type [D]efinitions' })
vim.keymap.set('n', '<leader>ds', telescope.lsp_document_symbols , { desc = '[D]ocument [S]ymbols' })

vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename , { desc = '[R]e [N]ame' })
vim.keymap.set('n', 'K', vim.lsp.buf.hover , { desc = 'docs' })
vim.keymap.set('n','gD', vim.lsp.buf.declaration, {desc='[G]oto [D]eclaration'})

