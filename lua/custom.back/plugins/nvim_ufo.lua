vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

return {
    "kevinhwang91/nvim-ufo",
    keys={
        {"<leader>j",function() require("ufo").openAllFolds() end, desc="Open fold"},
        {"<leader>k",function() require("ufo").closeAllFolds() end, desc="Close fold"}
    },
    opts = {
        provider_selector = function(bufnr, filetype, buftype)
            return { 'treesitter', 'indent' }
        end
    },
    dependencies = 'kevinhwang91/promise-async',
}
