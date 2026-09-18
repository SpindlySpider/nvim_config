return {
  'ThePrimeagen/harpoon',
  name = 'harpoon',
  config = function()
    vim.keymap.set('n', '<leader>hm', require('harpoon.mark').add_file, { desc = '[h]arpoon [m]ark -  mark file for harpoon' })
    vim.keymap.set('n', '<leader>hp', require('harpoon.ui').toggle_quick_menu, { desc = '[h]ar[p]oon - open harpoon quick menu' })
  end,
}
