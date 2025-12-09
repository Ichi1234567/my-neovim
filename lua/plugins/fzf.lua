return {
  -- need install fzf cli
  {
    'junegunn/fzf',
  },
  {
    'junegunn/fzf.vim',
    keys = {
      { '<C-P>', ':Files<CR>', mode = 'n', noremap = true, silent = true },
      { '<leader>fa', ':Rg<Space>', mode = 'n', noremap = true, silent = true },
    },
    config = function()
      vim.g.fzf_layout = { down = '~40%' }
      vim.g.fzf_history_dir = '~/.local/share/fzf-history'
    end
  }
}
