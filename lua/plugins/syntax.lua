-- ==========================
-- syntax / highlighting / editing
-- ==========================

return {
  -- js, ts, jsx
  {
    'pangloss/vim-javascript',
    config = function()
      -- 基本 JS 設定
      vim.g.javascript_plugin_jsx = 1
    end
  },
  { 'maxmellon/vim-jsx-pretty' },
  { 'leafgarland/typescript-vim' },
  { 'peitalin/vim-jsx-typescript' },

  -- markdown
  { 'tpope/vim-markdown' },
  {
    -- :call mkdp#util#install()
    'iamcco/markdown-preview.nvim',
    ft = { 'markdown' },
    build = function()
      vim.fn['mkdp#util#install']()
    end,
  },


  { 'nono/vim-handlebars' },
  { 'isRuslan/vim-es6' },
  { 'cakebaker/scss-syntax.vim' },

  { 'sheerun/vim-polyglot' },
}
