return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "simrat39/symbols-outline.nvim",
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
          "quickfix",
          "symbols-outline",
        },
      })
    end,
  }
}
