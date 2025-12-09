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
    -- npm install -g mermaid-cli
    'iamcco/markdown-preview.nvim',
    keys = { '<leader>mp', '<leader>ms' },
    config = function()
      vim.g.mkdp_auto_start = 0          -- 不自動啟動
      vim.g.mkdp_open_to_the_world = 1   -- 可以開到瀏覽器
      vim.g.mkdp_browser = 'firefox'    -- 或 chrome
      vim.g.mkdp_page_title = '${name}' -- 自訂 title
      vim.cmd([[let g:mkdp_preview_options = {'mkit': {'theme': 'default'}}]])
      vim.cmd([[
        nmap <leader>mp :MarkdownPreview<CR>
        nmap <leader>ms :MarkdownPreviewStop<CR>
        ]])
    end
  },


  { 'nono/vim-handlebars' },
  { 'isRuslan/vim-es6' },
  { 'cakebaker/scss-syntax.vim' },

  { 'sheerun/vim-polyglot' },
}
