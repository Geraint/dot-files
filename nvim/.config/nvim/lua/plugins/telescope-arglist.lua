return {
  {
    "sam4llis/telescope-arglist.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("telescope").load_extension("arglist")
    end,
    keys = {
			{ '<leader>fa', ':lua require("telescope-arglist").arglist()<CR>' },
    },
  }
}
