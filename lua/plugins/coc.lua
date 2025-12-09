return {
  'neoclide/coc.nvim',
  branch = 'release',
  keys = {
    -- Coc 跳轉
    -- 跳到定義
    { 'gd', '<Plug>(coc-definition)', mode = 'n', silent = true },
    -- 跳到實作
    { 'gi', '<Plug>(coc-implementation)', mode = 'n', silent = true },
    -- 跳到類型定義
    { 'gy', '<Plug>(coc-type-definition)', mode = 'n', silent = true },
    -- 查引用
    { 'gr', '<Plug>(coc-references)', mode = 'n', silent = true },
    -- 懸浮提示
    { 'K', ":call CocActionAsync('doHover')<CR>", mode = 'n', silent = true },

    -- 補全
    -- 觸發補全
    { '<C-Space>', "coc#refresh()", mode = 'i', expr = true, silent = true },
    -- 選下一個建議 / 插入 Tab
    { '<Tab>', "pumvisible() ? '\\<C-n>' : '\\<Tab>'", mode = 'i', expr = true, silent = true },
    -- 選上一個建議 / 插入 Shift+Tab
    { '<S-Tab>', "pumvisible() ? '\\<C-p>' : '\\<S-Tab>'", mode = 'i', expr = true, silent = true },

    -- ESLint / 格式化
    -- 格式化整個檔案
    { '<leader>f', ':CocCommand eslint.executeAutofix<CR>', mode = 'n', silent = true },
    -- 格式化選取區塊
    { '<leader>f', ':CocCommand editor.action.formatSelection<CR>', mode = 'v', silent = true },

    -- Coc list / 導覽
    -- 大綱 / outline
    { '<leader>o', ':CocList outline<CR>', mode = 'n', silent = true },
    -- 擴充管理
    { '<leader>e', ':CocList extensions<CR>', mode = 'n', silent = true },
    -- 最近使用檔案 / MRU
    { '<leader>m', ':CocList mru<CR>', mode = 'n', silent = true },

    { '<leader>tj', '<Plug>(coc-test-toggle)', mode = 'n', silent = true, noremap = false },
  },
  config = function()
    -- Coc global extensions
    vim.g.coc_global_extensions = {
      '@yaegassy/coc-tailwindcss3',
      'coc-eslint',
      'coc-graphql',
      'coc-jest',
      'coc-json',
      'coc-marketplace',
      'coc-spell-checker',
      'coc-yaml',
    }
  end
}
