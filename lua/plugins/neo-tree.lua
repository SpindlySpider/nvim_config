vim.pack.add({
  "https://github.com/nvim-neo-tree/neo-tree.nvim",
  -- dependencies
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/MunifTanjim/nui.nvim",
  -- optional, but recommended
  "https://github.com/nvim-tree/nvim-web-devicons"
})

-- setup the neo tree options
require("neo-tree").setup({
  close_if_last_window = true,
  popup_border_style = "rounded",
  event_handlers = {
    {
      event = "file_open_requested",
      handler = function()
        require("neo-tree.command").execute({ action = "close" })
      end
    },
  }
})

-- neo tree keybinds
vim.keymap.set('n', 'ft', '<cmd>Neotree<CR>', { desc = "[F]ile [T]ree - open file tree"})
