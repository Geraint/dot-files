return {
  {
    "mfussenegger/nvim-lint",
    -- "Geraint/nvim-lint",
    config = function()
      require("lint").linters_by_ft = {
        markdown = {},
      }
      vim.api.nvim_create_autocmd({ "BufWritePost" }, {
        callback = function()
          require("lint").try_lint()
        end,
      })
    end,
  }
}
