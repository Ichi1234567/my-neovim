-- ==========================
-- file tree / navigation
-- ==========================
-- { 'junegunn/vim-easy-align' }, -- vertical alignment
return {
  -- { 'nvim-neo-tree/neo-tree.nvim' }, -- 先不要、因為設定比較複雜
  {
    'nvim-tree/nvim-tree.lua',
    keys = {
      { '<C-I>', ':NvimTreeToggle<CR>', { silent = true } },
      { '<leader>i', ':NvimTreeFindFile<CR>', { silent = true } },
    },
    config = function()
      require('nvim-tree').setup({
        sort = {
          sorter = 'case_sensitive',
        },
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = false,     -- 顯示 dotfiles
          git_ignored = true,   -- 隱藏 gitignore 內的檔案
          custom = {            -- 手動隱藏特定檔案 (Vim regex)
            '.git$',          -- 隱藏 .git 目錄
          },
        },
      })
    end
  },
}
