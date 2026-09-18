vim.pack.add({ 'https://github.com/nvim-mini/mini.nvim' })


local statusline = require 'mini.statusline'
-- set use_icons to true if you have a Nerd Font
statusline.setup { use_icons = vim.g.have_nerd_font }

