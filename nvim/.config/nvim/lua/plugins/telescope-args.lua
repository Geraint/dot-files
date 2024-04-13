return {
  {
    "Geraint/telescope-args",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("telescope").load_extension("args")
    end,
    keys = {
			{ '<leader>fa', ':Telescope args<cr>' },
    },
  }
}
