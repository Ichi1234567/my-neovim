-- ==========================
-- system / utils
-- ==========================
return {
  {
    -- need ripgrep, fd
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
      },
    },

    keys = {
      -- 檔案搜尋
      { '<C-p>', function() require('telescope.builtin').find_files() end, desc = 'Find Files' },

      -- Live grep
      { '<leader>fa', function() require('telescope.builtin').live_grep() end, desc = 'Live Grep' },

      -- Buffers
      { '<leader>b', function() require('telescope.builtin').buffers() end, desc = 'Buffers' },
    },

    config = function()
      local telescope = require('telescope')

      telescope.setup({
        defaults = {
          prompt_prefix = '🔍 ',
          cache_picker = false,      -- 不快取搜尋結果
          layout_config = {
            preview_cutoff = 120,    -- 小視窗不預覽
          },
          file_ignore_patterns = {
            '^%.git/',   -- ← 把 `.git` 資料夾藏起來（百分百有效）
          },
        },
      })

      telescope.load_extension('fzf')
    end
  }

}
