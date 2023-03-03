return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "css",
          "html",
          "javascript",
          "lua",
          "php",
          "ruby",
          "scss",
          "vim",
        },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = true,
        },
      })
    end
  }
}
