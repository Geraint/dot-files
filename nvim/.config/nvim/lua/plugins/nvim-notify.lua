return {
  {
    "rcarriga/nvim-notify",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    keys = {
      { '<leader>fn', ':lua require("telescope").extensions.notify.notify()<cr>', noremap = true },
    },
    config = function()
      local notify = require("notify")
      notify.setup({
        background_colour = "#111111",
      })
      vim.notify = notify
    end,
  }
}
