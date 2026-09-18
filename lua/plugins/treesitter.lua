vim.pack.add({
  "https://github.com/nvim-treesitter/nvim-treesitter",
})

sitter = require("nvim-treesitter")

sitter.setup({
   callback = function()
     -- syntax highlighting, provided by Neovim
     vim.treesitter.start()
     vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
   end,
})

sitter.install { 'java', 'c', 'lua', 'vim', 'vimdoc', 'query', 'elixir', 'heex', 'javascript', 'typescript', 'html', 'yaml','typst' }
