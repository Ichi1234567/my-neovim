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
  require('plugins.coc'),
  require('plugins.lsp'),
  require('plugins.misc'),
  require('plugins.switch'),
}

local all = {}
for _, mod in ipairs(modules) do
  vim.list_extend(all, mod)  -- <- 直接用 mod，不要 .plugins
end

return all
