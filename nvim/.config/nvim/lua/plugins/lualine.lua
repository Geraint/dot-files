return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'simrat39/symbols-outline.nvim',
      'arkav/lualine-lsp-progress',
    },
    config = function()
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
            'lsp_progress'
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
          "symbols-outline",
          "trouble",
        },
      })
    end,
  }
}
