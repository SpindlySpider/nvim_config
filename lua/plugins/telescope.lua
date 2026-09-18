vim.pack.add({
  "https://github.com/nvim-telescope/telescope.nvim",
  -- dependencies
  "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
})

telescope = require("telescope.builtin")

--- binds
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', 'gd', telescope.lsp_definitions , { desc = '[G]oto [D]efinition' })
vim.keymap.set('n', 'gr', telescope.lsp_references , { desc = '[G]oto [R]eferences' })
vim.keymap.set('n', 'gI', telescope.lsp_implementations , { desc = '[G]oto [I]mplementation' })

vim.keymap.set('n', '<leader>D', telescope.lsp_type_definitions , { desc = 'type [D]efinitions' })
vim.keymap.set('n', '<leader>ds', telescope.lsp_document_symbols , { desc = '[D]ocument [S]ymbols' })

vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename , { desc = '[R]e [N]ame' })
vim.keymap.set('n', 'K', vim.lsp.buf.hover , { desc = 'docs' })
vim.keymap.set('n','gD', vim.lsp.buf.declaration, {desc='[G]oto [D]eclaration'})

vim.keymap.set('n', '<leader>sh', telescope.help_tags , { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sk', telescope.keymaps , { desc = '[S]earch [K]eymaps' })
vim.keymap.set('n', '<leader>sf', telescope.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sgit', telescope.git_status, { desc = '[S]earch [git]' })
vim.keymap.set('n', '<leader>ss', telescope.builtin, { desc = '[S]earch [S]elect Telescope' })
vim.keymap.set('n', '<leader>sw', telescope.grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', telescope.live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', telescope.diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', telescope.resume, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>s.', telescope.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set('n', '<leader><leader>', telescope.buffers, { desc = '[ ] Find existing buffers' })

