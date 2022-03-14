local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
end

-- automatically run :PackerCompile whenever _plugins.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require("packer").startup(function()
    use("wbthomason/packer.nvim")

    use({
        "klen/nvim-config-local",
        config = function()
            require("config-local").setup({
                -- Default configuration (optional)
                config_files = { ".vimrc.lua", ".vimrc" }, -- Config file patterns to load (lua supported)
                hashfile = vim.fn.stdpath("data") .. "/config-local", -- Where the plugin keeps files data
                autocommands_create = true, -- Create autocommands (VimEnter, DirectoryChanged)
                commands_create = true, -- Create commands (ConfigSource, ConfigEdit, ConfigTrust, ConfigIgnore)
                silent = false, -- Disable plugin messages (Config loaded/ignored)
            })
        end,
    })
    -- Telescope
    use({
        "nvim-telescope/telescope.nvim",
        requires = {
            {
                "nvim-lua/plenary.nvim",
            },
        },
        config = function()
            require("keys.telescope").bind_keys()
        end,
    })
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
    require("telescope").load_extension("fzf")

    use({
        "AckslD/nvim-neoclip.lua",
        requires = {
            { "nvim-telescope/telescope.nvim" },
        },
        config = function()
            require("neoclip").setup()
            require("telescope").load_extension("neoclip")
        end,
    })
    use({ "camgraff/telescope-tmux.nvim" })

    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "javascript", "php", "scss" },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = true,
                },
            })
        end,
    })

    ----------------------------------------------------------------------
    -- Filesystem
    ----------------------------------------------------------------------
    use({"tpope/vim-eunuch"})
    use({"tpope/vim-vinegar"})

    -- Git
    use({
        "tpope/vim-fugitive",
        config = function()
            require("keys.fugitive").bind_keys()
        end,
    })
    use({
        "lewis6991/gitsigns.nvim",
        requires = { "nvim-lua/plenary.nvim" },
        config = function()
            require("gitsigns").setup({
                on_attach = function(bufnr)
                    require("keys/git-signs").bind_keys()
                end,
            })
        end,
    })

    -- Tmux
    use({ "christoomey/vim-tmux-navigator" })
    use({ "RyanMillerC/better-vim-tmux-resizer" })

    -- Appearance Stuff
    use({ "nanotech/jellybeans.vim" })
    use({ "kyazdani42/nvim-web-devicons" })
    use({ "folke/tokyonight.nvim" })
    use({
        "beauwilliams/focus.nvim",
        config = function()
            require("focus").setup()
            require("keys.focus").bind_keys()
        end,
    })

    use({
        "nvim-lualine/lualine.nvim",
        config = function()
            require("lualine").setup({
                options = {
                    -- theme  = 'jellybeans',
                    theme = "tokyonight",
                },
                sections = {
                    lualine_c = {
                        {
                            "filename",
                            path = 1,
                        },
                    },
                },
                tabline = {
                    lualine_a = { "buffers" },
                    lualine_b = {},
                    lualine_c = {},
                    lualine_x = {},
                    lualine_y = {},
                    lualine_z = {},
                },
                extensions = {
                    "fugitive",
                    "quickfix",
                },
            })
        end,
    })

    -- LSP
    use({
        "jose-elias-alvarez/null-ls.nvim",
        requires = { "nvim-lua/plenary.nvim" },
        config = function()
            require("null-ls").setup({
                -- debug = true,
                -- diagnostics_format = "[#{s}] #{m} (#{c})",
                sources = {
                    require("null-ls").builtins.diagnostics.php,
                },
                on_attach = require("keys.lsp-keys").on_attach,
            })
        end,
    })

    use({
        "neovim/nvim-lspconfig",
        config = function()
            require("keys.lspconfig").bind_keys()
        end,
    })

    use({
        "neoclide/coc.nvim",
        branch = "release",
        config = function()
            require("keys/coc").bind_keys()
        end,
    })
    use({
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup({})
            require("keys/trouble").bind_keys()
        end,
    })

    use({
        "fannheyward/telescope-coc.nvim",
        config = function()
            require("telescope").load_extension("coc")
        end,
    })

    -- PHP Stuff
    use {
      'phpactor/phpactor',
      ft = 'php',
      tag = '*',
      run = 'composer install --no-dev -o',
      config = function()
        -- require('lspconfig').phpactor.setup{}
		require('keys/phpactor').bind_keys()
      end
    }

    use {
      'camilledejoye/phpactor-mappings',
      ft = 'php',
      --requires = {
        --'phpactor/phpactor',
      --}
    }

    use({
        "Geraint/vim-phpunit",
        requires = {
            "vim-test/vim-test",
        },
        config = function()
            require("keys.vim-test").bind_keys()
            vim.cmd([[let test#strategy = "dispatch"]])
            vim.cmd([[let test#php#phpunit#options = '--no-coverage']])
        end,
    })

    use({
        "radenling/vim-dispatch-neovim",
        requires = {
            "tpope/vim-dispatch",
        },
    })

    use({ "tpope/vim-projectionist" })
    use({
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    })

    use({
        "simrat39/symbols-outline.nvim",
        config = function()
            require("keys.symbols-outline").set_options()
            require("keys.symbols-outline").bind_keys()
        end,
    })

    if packer_bootstrap then
        require("packer").sync()
    end
end)
