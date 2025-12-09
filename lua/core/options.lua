local opt = vim.opt

-- ===================================================
-- Basic file behavior
-- ===================================================
opt.binary = true
opt.encoding = "utf-8"

-- ===================================================
-- Clipboard
-- ===================================================
opt.clipboard = "unnamed"

-- ===================================================
-- Presentation
-- ===================================================
opt.number = true
opt.relativenumber = false
opt.numberwidth = 3
opt.foldmethod = "indent"
opt.textwidth = 0
opt.wrap = true
opt.showcmd = true
opt.showmatch = true
opt.ruler = true
opt.wildmenu = true
opt.visualbell = true
opt.laststatus = 2
opt.ttimeoutlen = 50
opt.termguicolors = true

-- ===================================================
-- Search
-- ===================================================
opt.incsearch = true
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true

-- ===================================================
-- Indentation
-- ===================================================
opt.smartindent = true
opt.autoindent = true
opt.cindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-- ===================================================
-- Mouse
-- ===================================================
opt.mouse = 'a'
opt.mousehide = true

-- ===================================================
-- Backup / Undo
-- ===================================================
vim.fn.system('mkdir -vp ~/.backup/undo/ > /dev/null 2>&1')
opt.backup = false
opt.swapfile = false
opt.undofile = true
opt.backupdir = "~/.backup,."
opt.directory = "~/.backup,~/tmp,."
opt.undodir = "~/.backup/undo/,~/tmp,."

-- ===================================================
-- Folding
-- ===================================================
opt.foldcolumn = "0"
opt.foldmethod = "indent"
opt.foldlevel = 9
opt.foldenable = false

-- ===================================================
-- Wildignore
-- ===================================================
opt.wildignore:append({ ".svn", "CVS", ".git", ".hg", "*.o", "*.a", "*.class", "*.mo", "*.la", "*.so", "*.obj", "*.swp", "*.jpg", "*.png", "*.xpm", "*.gif", ".DS_Store", ".rbenv", ".nvm", "*.tmp" })

-- ===================================================
-- Shell
-- ===================================================
opt.hidden = true
opt.history = 1000
opt.autoread = true
opt.backspace = { "indent", "eol", "start" }
opt.completeopt = { "longest", "menuone" }

-- ===================================================
-- 十字準星
-- ===================================================
opt.cursorline = true
opt.cursorcolumn = true
