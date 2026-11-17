vim.pack.add({"https://github.com/lewis6991/gitsigns.nvim"})

-- require("gitsigns").setup()

vim.keymap.set("n","[g","<cmd>Gitsigns next_hunk<CR>",{desc="Get the next git hunk"})
vim.keymap.set("n","]g","<cmd>Gitsigns prev_hunk<CR>",{desc="get the prevouis git Hunk"})
