return {
   "amitds1997/remote-nvim.nvim",
   version = "v0.3.9", -- Pin to 0.3.9 to allow transfer
   dependencies = {
       "nvim-lua/plenary.nvim", -- For standard functions
       "MunifTanjim/nui.nvim", -- To build the plugin UI
       "nvim-telescope/telescope.nvim", -- For picking b/w different remote methods
   },
   config = true,
}
