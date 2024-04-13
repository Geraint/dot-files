return {
  {
    "rcarriga/nvim-notify",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    keys = {
      { '<leader>fn', ':lua require("telescope").extensions.notify.notify()<cr>', noremap = true },
    },
    event = 'VeryLazy',
    config = function()
      local notify = require("notify")
      vim.notify = notify
    end,
  }
}
