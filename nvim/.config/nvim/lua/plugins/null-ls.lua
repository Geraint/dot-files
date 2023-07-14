return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("null-ls").setup({
        sources = {
        },
        on_attach = require("lsp-on-attach").on_attach
      })
    end,
  }
}
