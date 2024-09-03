local neo_tree = {
  "nvim-neo-tree/neo-tree.nvim",
  name = "neo tree",
  keys = {
    { "<leader>ft", "<cmd>Neotree<cr>", desc = "[F]ile [T]ree - open file tree", mode={"n"} },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",              -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = {
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
  }
}

return neo_tree
