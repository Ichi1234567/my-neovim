-- ==========================
--  AI
-- ==========================

return {
  -- Copilot 設定
  {
    'github/copilot.vim',
    keys = {
      -- 手動觸發補全
      { '<leader>cp', ':Copilot panel<CR>', desc = 'Open Copilot Panel' },
      { '<leader>cc', ':Copilot suggestion<CR>', desc = 'Trigger Copilot Suggestion' },
    },
    config = function()
      -- 啟用 Copilot
      vim.g.copilot_no_tab_map = true   -- 不綁定 Tab
      vim.g.copilot_filetypes = {
        ['*'] = true,
      }
    end,
  },

  -- CodeCompanion.nvim 設定
  {
    'olimorris/codecompanion.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    keys = {
      -- 打開 chat 視窗
      { '<leader>ca', ':CodeCompanionChat<CR>', desc = 'Open CodeCompanion Chat' },
      -- 選文字後重構 / rewrite
      { '<leader>cr', ':CodeCompanionRefactor<CR>', desc = 'Refactor selection' },
      -- 選文字後生成函式 / code block
      { '<leader>cg', ':CodeCompanionGenerate<CR>', desc = 'Generate code from selection or context' },
    },
    opts = {
      -- NOTE: The log_level is in `opts.opts`
      opts = {
        log_level = 'DEBUG', -- or 'TRACE'
      },
    },
    config = function()
      require('codecompanion').setup({
          -- 預設使用的 agent
          default_agent = 'openai',
          agents = {
            openai = {
              api_key_env = 'OPENAI_API_KEY',
              model = 'gpt-4',  -- 或 gpt-4-32k / gpt-3.5-turbo
            },
            claude = {
              api_key_env = 'ANTHROPIC_API_KEY',
              model = 'claude-instant-v1',
            },
          },
          ui = {
            floating = true,  -- 用浮動視窗顯示
            width = 80,
            height = 20,
          },
          mappings = {
            accept = '<CR>',
            reject = '<C-e>',
            next = '<C-n>',
            prev = '<C-p>',
          },
        })
    end,
  },
}
