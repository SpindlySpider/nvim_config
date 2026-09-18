vim.pack.add({"https://github.com/voldikss/vim-floaterm"})


-- binds

vim.keymap.set("n","<leader>go", "<cmd>FloatermNew --height=0.9 --width=0.9 --floaterm_title=git lazygit<CR>",{ desc = '[g]it [o]ptions -  open lazy git in a floating window' })
