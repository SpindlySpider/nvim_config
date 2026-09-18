vim.pack.add({
  'https://github.com/neovim/nvim-lspconfig',
  -- add mason for lsp finding
  "https://github.com/mason-org/mason.nvim",
  "https://github.com/mason-org/mason-lspconfig.nvim"
})


--- MASON options
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "emmylua_ls", "pyright", "stylelua","black" }
})





--- LSP options


--- LUA
vim.lsp.config["emmylua_ls"] = {
  cmd = {"emmylua_ls"},
  filetypes = {"lua"},
}

vim.lsp.enable("emmylua_ls")

--- python options

vim.lsp.config["pyright"] = {
  filetypes = {"python"},
}

vim.lsp.enable("pyright")
