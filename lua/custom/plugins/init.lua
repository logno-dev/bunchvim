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
  {
    'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    ft = { 'org' },
    config = function()
      -- Setup orgmode
      require('orgmode').setup {
        org_agenda_files = '~/notes.wiki/**/*',
        org_default_notes_file = '~/notes.wiki/general.org',
        win_split_mode = 'float',
        org_agenda_window = {
          win_split_mode = 'float',
        },
        mappings = {
          org_return_uses_meta_return = true,
        },
      }

      -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
      -- add ~org~ to ignore_install
      -- require('nvim-treesitter.configs').setup({
      --   ensure_installed = 'all',
      --   ignore_install = { 'org' },
      -- })
    end,
  },
  {
    'logno-dev/header-level.nvim',
    name = 'header-level',
    ft = { 'markdown', 'mdx' },
    config = function()
      require('header-level').setup {
        enabled = true,
        show_virtual_text = true, -- Show level as virtual text at end of line
        update_events = { 'CursorMoved', 'CursorMovedI', 'BufEnter' },
      }
    end,
  },
}
