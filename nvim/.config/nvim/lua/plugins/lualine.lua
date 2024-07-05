return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'linrongbin16/lsp-progress.nvim',
    },
    config = function()
      require('lsp-progress').setup({})
      -- vim.api.nvim_create_augroup("lualine_augroup", { clear = true })
      -- vim.api.nvim_create_autocmd("User", {
      --   group = "lualine_augroup",
      --   pattern = "LspProgressStatusUpdated",
      --   callback = require("lualine").refresh,
      -- })
      require("lualine").setup({
        options = {
          globalstatus = true,
          theme = "kanagawa",
        },
        sections = {
          lualine_c = {
            {
              "filename",
              path = 1,
            },
            function()
              return require('lsp-progress').progress()
            end,
          },
        },
        tabline = {
          lualine_a = { "buffers" },
          lualine_b = {},
          lualine_c = {},
          lualine_x = {},
          lualine_y = {},
          lualine_z = {},
        },
        extensions = {
          "fugitive",
          "lazy",
          "mason",
          "quickfix",
          "trouble",
        },
      })
    end,
  }
}
