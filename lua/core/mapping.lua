local map = vim.keymap.set

-- ===================================================
-- Leader keys
-- ===================================================
vim.g.mapleader = ','

-- ===================================================
-- Visual mode copy
-- ===================================================
map('v', '<C-y>', '"+y', { desc = "Copy to clipboard" })

-- ===================================================
-- Visual mode indentation (keep selection)
-- ===================================================
map('v', '<', '<gv', { desc = 'Indent left and reselect' })
map('v', '>', '>gv', { desc = 'Indent right and reselect' })

-- ===================================================
-- Buffer management
-- ===================================================
map('n', '<leader>bd', function()
  vim.cmd('silent! %bd|e#|bd#')  -- 關閉所有 buffer 但保留當前檔案
end, { desc = 'Close other buffers' })
