return {
  {
    "nvim-focus/focus.nvim",
    version = '*',
    config = function()
      require("focus").setup()
    end,
    keys = {
      { "<leader>sh", ":FocusSplitLeft<CR>",  silent = true },
      { "<leader>sj", ":FocusSplitDown<CR>",  silent = true },
      { "<leader>sk", ":FocusSplitUp<CR>",    silent = true },
      { "<leader>sl", ":FocusSplitRight<CR>", silent = true },
      { "<leader>st", ":FocusToggle<CR>",     silent = true },
    }
  }
}
