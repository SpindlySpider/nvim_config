vim.pack.add({ 
  'https://github.com/hrsh7th/nvim-cmp',
  'https://github.com/hrsh7th/cmp-buffer',
  'https://github.com/hrsh7th/cmp-path',
  'https://github.com/hrsh7th/cmp-nvim-lsp',

})
-- https://github.com/hrsh7th/nvim-cmp#recommended-configuration
local cmp = require 'cmp'
cmp.setup {
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  sources = cmp.config.sources {
    { name = 'nvim_lsp' },
  },
  mapping = cmp.mapping.preset.insert {
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm { select = true }, -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  },
}

-- bindings
--
-- vim.keymap.set('n', '<C-b>', cmp.mapping.scroll_docs(-4), { desc = 'scroll back on docs' })
-- vim.keymap.set('n', '<C-f>', cmp.mapping.scroll_docs(4), { desc = 'scroll forwards on docs' })
-- vim.keymap.set('i', '<C-Space>', cmp.mapping.complete(), { desc = 'completion' })
