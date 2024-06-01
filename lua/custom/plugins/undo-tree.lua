return {
    "mbbill/undotree",
    name = "undo tree",
    config = function()
      vim.keymap.set('n', '<leader>ut', vim.cmd.UndotreeToggle, { desc = '[u]ndo [t]ree -  toggle undo tree' })
    end
  }
