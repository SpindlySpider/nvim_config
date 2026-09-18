local float = {
  "voldikss/vim-floaterm",
  name = "vim float",
  config = function()
    vim.keymap.set('n', '<leader>go', function()
        vim.cmd(":FloatermNew --height=0.9 --width=0.9 --floaterm_title=git lazygit")
        print("git open")
      end,
      { desc = '[g]it [o]ptions -  open lazy git in a floating window' })
  end,
}
return float
