-- init.lua
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

-- 如果 Lazy.nvim 不存在，自動 clone
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- 最新穩定版
    lazypath,
  })
end

-- 將 Lazy.nvim 加入 runtime path
vim.opt.rtp:prepend(lazypath)

-- normal settings
require('core.globals');
require('core.options');
require('core.mapping');

-- plugins (Lazy.nvim)
require('lazy').setup('plugins')
