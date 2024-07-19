return {
  {
    "isak102/telescope-git-file-history.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "tpope/vim-fugitive",
    },
    config = function()
      require("telescope").load_extension("git_file_history")
    end,
    keys = {
			{ '<leader>fc', ':lua require("telescope").extensions.git_file_history.git_file_history()<CR>' },
    },
  }
}
