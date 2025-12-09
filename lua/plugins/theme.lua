-- ==========================
-- color theme / status bar
-- ==========================
return {
  -- { 'altercation/vim-colors-solarized' },
  -- { 'folke/tokyonight.nvim' }
  { 'catppuccin/nvim' },

  -- { 'itchyny/lightline.vim' }, -- status line
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      -- lualine setup
      require('lualine').setup({
        options = {
          theme = 'catppuccin',          -- 你可以換成其他 lualine 支援的 theme
          section_separators = { left = '⮀', right = '⮂' },
          component_separators = { left = '⮁', right = '⮃' },
          globalstatus = true,           -- Neovim 0.8+ 可用
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { 'branch', 'diff', 'diagnostics' },
          lualine_c = {
            {
              'filename',
              file_status = true,       -- 顯示 +, -, readonly
              path = 1,                 -- 0 = 文件名, 1 = 相對路徑
              shorting_target = 30,
            }
          },
          lualine_x = { 'encoding', 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' }
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { 'filename' },
          lualine_x = { 'location' },
          lualine_y = {},
          lualine_z = {}
        },
        extensions = { 'fugitive' }      -- 自動支援 Git 狀態
      })
    end
  },
}
