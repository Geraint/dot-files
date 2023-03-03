return {
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require("symbols-outline").setup({
      highlight_hovered_item = false,
      auto_preview = false,
      show_numbers = true,
      show_relative_numbers = true,
      width = 33,
      keymaps = {
        hover_symbol = "H",
      },
    })
    end,
    keys = {
      { "<leader>so", ':SymbolsOutline<cr>', noremap = true },
    },
  }
}
