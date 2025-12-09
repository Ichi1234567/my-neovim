-- ==========================
-- misc / helpers
-- ==========================

return {
  {
    'windwp/nvim-autopairs',
    config = true,
  },

  -- switch true/false etc.
  {
    'AndrewRadev/switch.vim',
    keys = {
      { '<s-S>', '<cmd>Switch<CR>', mode = 'n' },
    },
    config = function()
      -- HAML filetype 專用 switch definitions
      vim.api.nvim_create_autocmd('FileType', {
        pattern = 'haml',
        callback = function()
          vim.b.switch_definitions = {
            vim.g.switch_builtins.ruby_hash_style,
            vim.g.switch_builtins.ruby_string,
            vim.g.switch_builtins.true_false,
            vim.g.switch_builtins.true_false,
          }
        end,
      })
    end,
  },

  -- toggle comment
  {
    'tomtom/tcomment_vim',
    keys = {
      { '<leader>/', '<cmd>TComment<CR>', mode = 'n', noremap = true, silent = true },
      { '<leader>/', '<Plug>TComment_gc', mode = 'v', noremap = true, silent = true },
    },
  },

  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    keys = {
      -- 選擇函式
      { 'af', function() vim.cmd('normal! vaf') end, mode = 'n', desc = 'Select Around Function' },
      { 'if', function() vim.cmd('normal! vif') end, mode = 'n', desc = 'Select Inner Function' },

      -- 選擇 class
      { 'ac', function() vim.cmd('normal! vac') end, mode = 'n', desc = 'Select Around Class' },
      { 'ic', function() vim.cmd('normal! vic') end, mode = 'n', desc = 'Select Inner Class' },

      -- 選擇 tag/block
      { 'at', function() vim.cmd('normal! vat') end, mode = 'n', desc = 'Select Around Tag' },
      { 'it', function() vim.cmd('normal! vit') end, mode = 'n', desc = 'Select Inner Tag' },
    },
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = { 'html', 'javascript', 'typescript', 'tsx', 'css', 'lua' },
        highlight = { enable = true },
        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              ['af'] = '@function.outer',
              ['if'] = '@function.inner',
              ['ac'] = '@class.outer',
              ['ic'] = '@class.inner',
              ['at'] = '@block.outer',
              ['it'] = '@block.inner',
            },
          },
        },
      }
    end
  }
}
