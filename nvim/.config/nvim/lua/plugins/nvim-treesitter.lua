return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = 'main',
    init = function()
      local ensureInstalled = {
        "bash",
        "css",
        "csv",
        "html",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "javascript",
        "json",
        "lua",
        "luadoc",
        "markdown",
        "mermaid",
        "php",
        "phpdoc",
        "python",
        "ruby",
        "scss",
        "ssh_config",
        "xml",
        "yaml",
        "vim",
      }

      local alreadyInstalled = require('nvim-treesitter.config').get_installed()
      local parsersToInstall = vim.iter(ensureInstalled)
        :filter(function(parser)
          return not vim.tbl_contains(alreadyInstalled, parser)
        end)
        :totable()
      require('nvim-treesitter').install(parsersToInstall)

      vim.api.nvim_create_autocmd('FileType', {
        callback = function()
          -- Enable treesitter highlighting and disable regex syntax
          pcall(vim.treesitter.start)
          -- Enable treesitter-based indentation
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  }
}
