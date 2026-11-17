vim.pack.add({ 'https://github.com/nvim-mini/mini.nvim' })


local statusline = require 'mini.statusline'
-- set use_icons to true if you have a Nerd Font
statusline.setup { use_icons = vim.g.have_nerd_font }
require("mini.git").setup()
require("mini.diff").setup()

-- a/i text blocks 
-- https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-ai.md
require("mini.ai").setup()

-- Surround seems useful.
-- https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-surround.md
require("mini.surround").setup()

-- autopairs
-- https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-pairs.md
require("mini.pairs").setup()


-- move also seems useful
-- https://github.com/nvim-mini/mini.move
require("mini.move").setup()

-- auto complete
-- https://github.com/nvim-mini/mini.completion
require("mini.completion").setup()
-- recommended for complete:
require("mini.icons").setup()
require("mini.snippets").setup()
