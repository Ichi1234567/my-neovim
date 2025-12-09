-- ==========================
-- git support
-- ==========================

return {
  -- 核心 Git plugin
  {
    'tpope/vim-fugitive',
    lazy = true,
    cmd = {'G', 'Gstatus', 'Gblame', 'Gdiff'},
  },

  -- 行級 diff 標記 + 基本操作
  {
    'lewis6991/gitsigns.nvim',
    lazy = true,
    event = {'BufReadPre', 'BufNewFile'},
    config = function()
      require('gitsigns').setup {
        current_line_blame = true,  -- 在右側顯示當前行 commit
      }
    end,
    keys = {
      -- 行級跳轉
      -- 在檔案中快速跳到下一個 / 上一個修改
      {']c', function() require('gitsigns').next_hunk() end, desc = '跳到下一個 git 修改(hunk)'},
      {'[c', function() require('gitsigns').prev_hunk() end, desc = '跳到上一個 git 修改(hunk)'},

      -- stage / reset / undo
      -- stage 當前修改（hunk）
      {'<leader>hs', function() require('gitsigns').stage_hunk() end, desc = 'stage 當前 hunk'},
      -- undo stage（取消 stage）
      {'<leader>hu', function() require('gitsigns').undo_stage_hunk() end, desc = '取消 stage hunk'},
      -- reset hunk（回復到原始狀態）
      {'<leader>hr', function() require('gitsigns').reset_hunk() end, desc = '重置當前 hunk'},
      -- 預覽 hunk 的修改差異
      {'<leader>hp', function() require('gitsigns').preview_hunk() end, desc = '預覽 hunk 的 diff'},
      -- 查看當前行最後 commit 訊息 (blame)
      {'<leader>hb', function() require('gitsigns').blame_line() end, desc = 'blame 當前行 commit 信息'},
    }
  },

  -- 互動式全螢幕 git UI
  {
    'kdheepak/lazygit.nvim',
    lazy = true,
    cmd = 'LazyGit',
    keys = {
      -- 打開 Lazygit，全螢幕操作 commit / branch / stash 等
      {'<leader>gg', ':LazyGit<CR>', desc = '打開 Lazygit 全螢幕 UI'}
    }
  },
}

