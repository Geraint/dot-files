return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { '<leader>fF', ':lua require("telescope.builtin").find_files()<CR>', noremap = true },
      { '<leader>ff', ':lua require("telescope.builtin").git_files()<CR>', noremap = true },
      { '<leader>fl', ':lua require("telescope.builtin").current_buffer_fuzzy_find()<cr>', noremap = true },
      { '<leader>fg', ':lua require("telescope.builtin").live_grep()<cr>', noremap = true },
      { '<leader>fG', ':lua require("telescope.builtin").grep_string()<cr>', noremap = true },
      { '<leader>fb', ':lua require("telescope.builtin").buffers({sort_mru=true, sort_lastused=true})<cr>', noremap = true },
      { '<leader>f:', ':lua require("telescope.builtin").command_history()<cr>', noremap = true },
      { '<leader>f/', ':lua require("telescope.builtin").search_history()<cr>', noremap = true },
      { '<leader>ft', ':lua require("telescope.builtin").treesitter()<cr>', noremap = true },
      { '<leader>fh', ':lua require("telescope.builtin").help_tags()<cr>', noremap = true },
      { '<leader>fp', ':lua require("telescope.builtin").builtin()<cr>', noremap = true },
      { '<leader>fq', ':lua require("telescope.builtin").quickfix()<cr>', noremap = true },
      { '<leader>f"', ':lua require("telescope.builtin").registers()<cr>', noremap = true },
      { '<leader>gb', ':lua require("telescope.builtin").git_branches()<cr>', noremap = true },
      { '<leader>fr', ':lua require("telescope.builtin").resume()<cr>', noremap = true },
    },
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },
}
