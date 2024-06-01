return {
  "smjonas/inc-rename.nvim",
  name = "rename",
  config = function()
    vim.keymap.set("n", "<leader>rn", function()
      return ":IncRename " .. vim.fn.expand("<cword>")
    end, { expr = true , desc="[r]e[n]ame"})
  end
}
