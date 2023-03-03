return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("null-ls").setup({
        sources = {
          require("null-ls").builtins.diagnostics.php,
        },
        on_attach = require("lsp-on-attach").on_attach
      })
    end,
  }
}
