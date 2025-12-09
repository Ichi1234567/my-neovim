-- ==========================
-- autocomplete / LSP / AI
-- ==========================
-- { 'neoclide/coc.nvim', branch = 'release' }, -- LSP
-- { 'github/copilot.vim' },                    -- GitHub Copilot

-- ==========================
-- snippets
-- ==========================
-- { 'honza/vim-snippets' }, -- 之後有現代化的方法
-- { 'garbas/vim-snipmate' }, -- 之後有現代化的方法

-- plugins/init.lua
local modules = {
  require('plugins.system'),
  require('plugins.icon'),
  require('plugins.theme'),
  require('plugins.file'),
  require('plugins.git'),
  require('plugins.syntax'),
  require('plugins.lsp'),
  require('plugins.misc'),
  require('plugins.switch'),
}

local all = {}
for _, mod in ipairs(modules) do
  vim.list_extend(all, mod)  -- <- 直接用 mod，不要 .plugins
end

return all

-- return {
--   -- ==========================
--   -- system / utils
--   -- ==========================
--   {
--     'tpope/vim-sensible',      -- 基礎良好習慣
--     'nvim-telescope/telescope.nvim',
--   },
-- 
--   -- ==========================
--   -- color theme / status bar
--   -- ==========================
--   -- { 'altercation/vim-colors-solarized' },
--   -- { 'folke/tokyonight.nvim' }
--   { 'catppuccin/nvim' },
--   -- { 'itchyny/lightline.vim' },  -- status line
--   { 'nvim-lualine/lualine.nvim' }
-- 
--   -- ==========================
--   -- file tree / navigation
--   -- ==========================
--   -- { 'nvim-neo-tree/neo-tree.nvim' }, -- 先不要、因為設定比較複雜
--   { 'nvim-tree/nvim-tree.lua' },
--   { 'junegunn/vim-easy-align' }, -- vertical alignment
-- 
--   -- ==========================
--   -- icons
--   -- ==========================
--   { 'nvim-tree/nvim-web-devicons' },
-- 
--   -- ==========================
--   -- git support
--   -- ==========================
--   { 'tpope/vim-fugitive' },
--   { 'lewis6991/gitsigns.nvim' },
-- 
--   -- ==========================
--   -- syntax / highlighting / editing
--   -- ==========================
--   { 'pangloss/vim-javascript' },
--   { 'maxmellon/vim-jsx-pretty' },
--   { 'leafgarland/typescript-vim' },
--   { 'peitalin/vim-jsx-typescript' },
--   { 'vim-ruby/vim-ruby' },
--   { 'tpope/vim-markdown' },
--   { 'nono/vim-handlebars' },
--   { 'isRuslan/vim-es6' },
--   { 'cakebaker/scss-syntax.vim' },
--   -- { 'tpope/vim-surround' },
--   { 'kylechui/nvim-surround' },
--   { 'tpope/vim-endwise' },
--   { 'tomtom/tcomment_vim' },
--   -- { 'nvim-treesitter/nvim-treesitter' }
--   -- { 'Raimondi/delimitMate' },
--   { 'windwp/nvim-autopairs' },
--   { 'triglav/vim-visual-increment' },
--   { 'tpope/vim-rails' },  -- ruby on rails
--   { 'tpope/vim-bundler' },
--   { 'tpope/vim-rake' },
--   { 'nelstrom/vim-textobj-rubyblock', dependencies = { 'kana/vim-textobj-user' } },
-- 
--   -- ==========================
--   -- autocomplete / LSP / AI
--   -- ==========================
--   { 'neoclide/coc.nvim', branch = 'release' }, -- LSP
--   { 'github/copilot.vim' },                    -- GitHub Copilot
-- 
--   -- ==========================
--   -- snippets
--   -- ==========================
--   -- { 'honza/vim-snippets' }, -- 之後有現代化的方法
--   -- { 'garbas/vim-snipmate' }, -- 之後有現代化的方法
-- 
--   -- ==========================
--   -- search / motion
--   -- ==========================
--   -- { 'rking/ag.vim' }, -- 因為 fzf.vim 搭配 rg 搜尋速度也很快，而且更靈活。
--   -- { 'majutsushi/tagbar' }, -- 應該不想要他了
-- 
--   -- ==========================
--   -- misc / helpers
--   -- ==========================
--   { 'kana/vim-textobj-user' },
--   { 'AndrewRadev/switch.vim' }, -- switch true/false etc.
-- }
