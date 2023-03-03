return {
  {
    "kyazdani42/nvim-tree.lua",
    dependencies = {
      "kyazdani42/nvim-web-devicons",
    },
    keys = {
      { "<leader>Ft", ':NvimTreeToggle<cr>', noremap = true },
      { "<leader>Ff", ':NvimTreeFindFile<cr>', noremap = true },
    },
    config = function()
      require'nvim-tree'.setup {
        hijack_netrw = false,
      }
    end,
  }
}
