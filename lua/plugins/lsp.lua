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
      -- 接受 Copilot 建議（改用 Ctrl+J，避免與 Coc Tab 衝突）
      { '<C-j>', 'copilot#Accept("\\<CR>")', mode = 'i', expr = true, replace_keycodes = false, silent = true },
    },
    config = function()
      -- 啟用 Copilot
      vim.g.copilot_no_tab_map = true   -- 不綁定 Tab（避免與 Coc 衝突）
      vim.g.copilot_assume_mapped = true -- 告知 Copilot 已手動綁定快捷鍵
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
          adapters = {
            claude_code = function()
              return require('codecompanion.adapters').extend('claude_code', {
                  -- env = {
                  --   ANTHROPIC_API_KEY = 'my-api-key',
                  -- }
                })
            end,
          },
          strategies = {
            chat = {
              adapter = 'claude_code',
              opts = {
                system_prompt = '請用繁體中文回覆。',
              },
            },
            inline = {
              adapter = 'claude_code',
            },
            cmd = {
              adapter = 'claude_code',
            },
          },
          -- -- 預設使用的 agent
          -- default_agent = 'openai',
          -- agents = {
            --   openai = {
              --     api_key_env = 'OPENAI_API_KEY',
              --     model = 'gpt-4',  -- 或 gpt-4-32k / gpt-3.5-turbo
            --   },
            --   claude = {
              --     api_key_env = 'ANTHROPIC_API_KEY',
              --     model = 'claude-instant-v1',
            --   },
          -- },
          -- ui = {
            --   floating = true,  -- 用浮動視窗顯示
            --   width = 80,
            --   height = 20,
          -- },
          -- mappings = {
            --   accept = '<CR>',
            --   reject = '<C-e>',
            --   next = '<C-n>',
            --   prev = '<C-p>',
          -- },
        })
    end,
  },
}
