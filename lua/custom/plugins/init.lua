-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require('harpoon'):setup {
        settings = {
          save_on_toggle = true,
        },
      }
    end,
  },
  {
    'echasnovski/mini.nvim',
    version = false,
    config = function()
      require('mini.move').setup {
        mappings = {
          left = '<M-H>',
          right = '<M-L>',

          line_left = '<M-H>',
          line_right = '<M-L>',
        },
      }
      require('mini.surround').setup()
    end,
  },
  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',

      -- Adds LSP completion capabilities
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',

      -- Adds a number of user-friendly snippets
      'rafamadriz/friendly-snippets',
    },
  },
  {
    'stevearc/conform.nvim',
    opts = {
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    },
  },

  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {
      disable_filetype = { 'markdown', 'mdx', 'md' },
      check_ts = true,
      disable_in_visualblock = true,
    },
  },

  {
    'windwp/nvim-ts-autotag',
    opts = {
      autotag = {
        enable = true,
      },
    },
  },
  {
    'MunifTanjim/prettier.nvim',
    opts = {
      bin = 'prettier',
      filetypes = {
        'javascript',
        'typescript',
        'css',
        'scss',
        'json',
        'yaml',
        'html',
        'markdown',
        'mdx',
        'vue',
        'svelte',
        'graphql',
        'javascriptreact',
        'typescriptreact',
        'javascript.jsx',
        'typescript.tsx',
        'javascriptreact',
        'typescriptreact',
        'astro',
      },
      single_quote = false,
      trailing_comma = 'all',
      config_precedence = 'prefer-file',
      bracket_spacing = true,
      jsx_bracket_same_line = false,
      arrow_parens = 'avoid',
      print_width = 80,
      tab_width = 2,
    },
  },
  {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
  },
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = true,
  },
  {

    'folke/trouble.nvim',
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = 'Trouble',
    keys = {
      {
        '<leader>xx',
        '<cmd>Trouble diagnostics toggle<cr>',
        desc = 'Diagnostics (Trouble)',
      },
      {
        '<leader>xX',
        '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
        desc = 'Buffer Diagnostics (Trouble)',
      },
      {
        '<leader>cs',
        '<cmd>Trouble symbols toggle focus=false<cr>',
        desc = 'Symbols (Trouble)',
      },
      {
        '<leader>cl',
        '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
        desc = 'LSP Definitions / references / ... (Trouble)',
      },
      {
        '<leader>xL',
        '<cmd>Trouble loclist toggle<cr>',
        desc = 'Location List (Trouble)',
      },
      {
        '<leader>xQ',
        '<cmd>Trouble qflist toggle<cr>',
        desc = 'Quickfix List (Trouble)',
      },
    },
  },
}
