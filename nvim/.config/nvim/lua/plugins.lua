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
                config_files = { ".vimrc.lua" }, -- Config file patterns to load (lua supported)
                hashfile = vim.fn.stdpath("data") .. "/config-local", -- Where the plugin keeps files data
                autocommands_create = true, -- Create autocommands (VimEnter, DirectoryChanged)
                commands_create = true, -- Create commands (ConfigSource, ConfigEdit, ConfigTrust, ConfigIgnore)
                silent = false, -- Disable plugin messages (Config loaded/ignored)
            })
        end,
    })

    ----------------------------------------------------------------------
    -- Telescope
    ----------------------------------------------------------------------
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
        requires = {
            "p00f/nvim-ts-rainbow",
        },
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "javascript", "lua", "ruby", "php", "scss" },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = true,
                },
                rainbow = {
                    enable = true,
                    extended_mode = true,
                    colors = {
                        "#C34043",
                        "#76946A",
                        "#DCA561",
                        "#7E9CD8",
                        "#957FB8",
                        "#7FB4CA",
                        "#DCD7BA",
                    },
                },
            })
        end,
    })

    ----------------------------------------------------------------------
    -- Motions
    ----------------------------------------------------------------------
    use({"rlane/pounce.nvim", config = function() require("keys.pounce").bind_keys() end })
    use({"tpope/vim-surround"})
    use({"tpope/vim-repeat"})

    ----------------------------------------------------------------------
    -- Text transformation
    ----------------------------------------------------------------------
    use({"tpope/vim-abolish"})

    ----------------------------------------------------------------------
    -- Search
    ----------------------------------------------------------------------
    use({
        "kevinhwang91/nvim-hlslens",
        requires = { "haya14busa/vim-asterisk" },
        config = function()
            require("keys.nvim-hlslens").bind_keys()
            require('hlslens').setup({ calm_down = true })
        end
    })

    ----------------------------------------------------------------------
    -- Filesystem
    ----------------------------------------------------------------------
    use({"tpope/vim-eunuch"})
    use({"tpope/vim-vinegar"})
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = function()
            require("keys.nvim-tree").bind_keys()
            require'nvim-tree'.setup {
                hijack_netrw = false,
            }
        end
    }
    ----------------------------------------------------------------------
    -- Git
    ----------------------------------------------------------------------
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

    ----------------------------------------------------------------------
    -- Tmux
    ----------------------------------------------------------------------
    use({ "christoomey/vim-tmux-navigator" })
    use({ "RyanMillerC/better-vim-tmux-resizer" })
    use({ "tmux-plugins/vim-tmux-focus-events" })

    ----------------------------------------------------------------------
    -- Appearance Stuff
    ----------------------------------------------------------------------
    use({ "nanotech/jellybeans.vim" })
    use({
        "rebelot/kanagawa.nvim",
        config = function()
            require('kanagawa').setup({
                transparent = true,
                dimInactive = true,
            })
            vim.cmd ("colorscheme kanagawa")
        end,
    })
    use({ "kyazdani42/nvim-web-devicons" })
    use({ "folke/tokyonight.nvim" })
    use({
        "beauwilliams/focus.nvim",
        config = function()
            require("focus").setup()
            require("keys.focus").bind_keys()
        end,
    })

    use({"stevearc/dressing.nvim"})

    use({
        "nvim-lualine/lualine.nvim",
        config = function()
            require("lualine").setup({
                options = {
                    -- theme  = 'jellybeans',
                    theme = "kanagawa",
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

    use({
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            vim.cmd [[highlight IndentBlanklineIndent1 guifg=#938AA9 gui=nocombine]]
            vim.cmd [[highlight IndentBlanklineIndent2 guifg=#957FB8 gui=nocombine]]
            vim.cmd [[highlight IndentBlanklineIndent3 guifg=#7E9CD8 gui=nocombine]]
            vim.cmd [[highlight IndentBlanklineIndent4 guifg=#9CABCA gui=nocombine]]
            vim.cmd [[highlight IndentBlanklineIndent5 guifg=#7FB4CA gui=nocombine]]
            vim.cmd [[highlight IndentBlanklineIndent6 guifg=#7AA89F gui=nocombine]]
            vim.cmd [[highlight IndentBlanklineIndent7 guifg=#98BB6C gui=nocombine]]
            require("indent_blankline").setup {
                char_highlight_list = {
                    "IndentBlanklineIndent1",
                    "IndentBlanklineIndent2",
                    "IndentBlanklineIndent3",
                    "IndentBlanklineIndent4",
                    "IndentBlanklineIndent5",
                    "IndentBlanklineIndent6",
                    "IndentBlanklineIndent7",
                },
                enabled = false,
                show_current_context = true,
                show_current_context_start = true,
                require("keys.indent-blankline").bind_keys()
            }
        end
    })

    ----------------------------------------------------------------------
    -- LSP
    ----------------------------------------------------------------------
    use({
        "jose-elias-alvarez/null-ls.nvim",
        requires = { "nvim-lua/plenary.nvim" },
        config = function()
            require("null-ls").setup({
                debug = true,
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
        "folke/trouble.nvim",
        requires = {
            "kyazdani42/nvim-web-devicons",
            "folke/lsp-colors.nvim",
        },
        config = function()
            require("trouble").setup({})
            require("keys/trouble").bind_keys()
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
        "fannheyward/telescope-coc.nvim",
        config = function()
            require("telescope").load_extension("coc")
        end,
    })

    ----------------------------------------------------------------------
    -- PHP Stuff
    ----------------------------------------------------------------------
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

    use({"lumiliet/vim-twig"})

    ----------------------------------------------------------------------
    -- General coding stuff
    ----------------------------------------------------------------------
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

    use({
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {
            }
        end,
    })


    if packer_bootstrap then
        require("packer").sync()
    end
end)
