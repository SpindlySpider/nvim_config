local neo_tree = {
    "nvim-neo-tree/neo-tree.nvim",
    name = "neo tree",
    config = function()
      vim.keymap.set('n', '<leader>ft', function()
        print("open file tree")
        vim.cmd(":Neotree<enter>")
      end, { desc = '[F]ile [T]ree  -  open file tree' })
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  }

return neo_tree
