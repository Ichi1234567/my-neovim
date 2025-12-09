-- ==========================
-- misc / helpers
-- ==========================

return {
  { 'kana/vim-textobj-user' },

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
}
