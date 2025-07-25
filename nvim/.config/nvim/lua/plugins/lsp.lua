return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "cssls",
          "eslint",
          "html",
          "jsonls",
          "lua_ls",
          "phpactor@2025.07.25.0",
          -- "rubocop",
          "stylelint_lsp",
          "ts_ls"
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lsp-signature-help",
      "onsails/lspkind.nvim",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
    keys = {
      { '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', noremap = true },
      { "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", noremap = true, silent = true },
      { "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", noremap = true, silent = true },
      { "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", noremap = true, silent = true },
    },
    config = function()
      -- Add additional capabilities supported by nvim-cmp
      local capabilities = vim.tbl_deep_extend("force",
        vim.lsp.protocol.make_client_capabilities(),
        require('cmp_nvim_lsp').default_capabilities()
      )

      local lsp_flags = {
        -- This is the default in Nvim 0.7+
        debounce_text_changes = 150,
      }

      vim.lsp.config('cssls', {
        on_attach = require("lsp-on-attach").on_attach,
        flags = lsp_flags,
        capabilities = capabilities,
      })
      vim.lsp.enable('cssls')

      vim.lsp.config('eslint', {
        on_attach = require("lsp-on-attach").on_attach,
        flags = lsp_flags,
        capabilities = capabilities,
      })
      vim.lsp.enable('eslint')

      vim.lsp.config('html', {
        on_attach = require("lsp-on-attach").on_attach,
        flags = lsp_flags,
        capabilities = capabilities,
        filetypes = { 'html', 'html.twig' },
      })
      vim.lsp.enable('html')

      vim.lsp.config('jsonls', {
        on_attach = require("lsp-on-attach").on_attach,
        flags = lsp_flags,
        capabilities = capabilities,
      })
      vim.lsp.enable('jsonls')

			vim.lsp.config('lua_ls', {
				settings = {
					Lua = {
						runtime = {
							version = 'LuaJIT',
						},
						diagnostics = {
							globals = {'vim'},
						},
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
              checkThirdParty = false,
						},
						telemetry = {
							enable = false,
						},
					},
				},
			})
      vim.lsp.enable('lua_ls')

      vim.lsp.config('phpactor', {
        on_attach = require("lsp-on-attach").on_attach,
        flags = lsp_flags,
        capabilities = capabilities,
      })
      vim.lsp.enable('phpactor')

      -- vim.lsp.config('rubocop', {
      --   on_attach = require("lsp-on-attach").on_attach,
      --   flags = lsp_flags,
      --   capabilities = capabilities,
      -- })
      -- vim.lsp.enable('rubocop')

      vim.lsp.config('stylelint_lsp', {
        on_attach = require("lsp-on-attach").on_attach,
        flags = lsp_flags,
        capabilities = capabilities,
        filetypes = { 'css', 'scss' },
      })
      vim.lsp.enable('stylelint_lsp')

      require("lspconfig").ts_ls.setup {
        on_attach = require("lsp-on-attach").on_attach,
        flags = lsp_flags,
        capabilities = capabilities,
      }

      -- luasnip setup
      local luasnip = require 'luasnip'

      -- nvim-cmp setup
      local cmp = require 'cmp'
      cmp.setup {
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        formatting = {
          format = require('lspkind').cmp_format({
            mode = "symbol_text",
            menu = ({
              buffer = "[Buffer]",
              nvim_lsp = "[LSP]",
              luasnip = "[LuaSnip]",
            })
          }),
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-u>'] = cmp.mapping.scroll_docs(-4), -- Up
          ['<C-d>'] = cmp.mapping.scroll_docs(4), -- Down
          -- C-b (back) C-f (forward) for snippet placeholder navigation.
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-y>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = false,
          },
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { 'i', 's' }),
          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { 'i', 's' }),
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'nvim_lsp_signature_help' },
          { name = 'luasnip' },
        }, {
          {
            name = 'buffer',
            option = {
              get_bufnrs = function()
                local bufs = {}
                for _, win in ipairs(vim.api.nvim_list_wins()) do
                  bufs[vim.api.nvim_win_get_buf(win)] = true
                end
                return vim.tbl_keys(bufs)
              end
            }
          },
        })
      }
    end,
  },
}
