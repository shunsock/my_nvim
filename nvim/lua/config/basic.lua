-- Enable auto indentation
vim.opt.autoindent = true

-- Automatically reload files if changed externally
vim.opt.autoread = true

-- Highlight the current column and line
vim.opt.cursorcolumn = true
vim.opt.cursorline = true

-- Set file encoding to UTF-8
vim.opt.encoding = "UTF-8"

-- Convert tabs to spaces
vim.opt.expandtab = true

-- Set the file encoding to UTF-8
vim.opt.fileencoding = "utf-8"

-- Allow switching buffers without saving
vim.opt.hidden = true

-- Highlight search results
vim.opt.hlsearch = true

-- Ignore case when searching
vim.opt.ignorecase = true

-- Show search matches as you type
vim.opt.incsearch = true

-- Always show the status line
vim.opt.laststatus = 2

-- Disable compatibility with vi
vim.opt.compatible = false

-- Disable creation of backup files
vim.opt.backup = false

-- Disable creation of swap files
vim.opt.swapfile = false

-- Display line numbers
vim.opt.number = true

-- Set the width of an indentation level to 2 spaces
vim.opt.shiftwidth = 2

-- Show incomplete commands
vim.opt.showcmd = true

-- Highlight matching brackets
vim.opt.showmatch = true

-- Enable case-sensitive searching when uppercase letters are used
vim.opt.smartcase = true

-- Enable smart indentation
vim.opt.smartindent = true

-- Enable syntax highlighting
vim.cmd('syntax enable')

-- Set the width of a tab to 2 spaces
vim.opt.tabstop = 2

-- Set the terminal title
vim.opt.title = true

-- Allow cursor to move past the end of line
vim.opt.virtualedit = "onemore"

-- Use visual bell instead of beeping
vim.opt.visualbell = true

-- Use longest partial completion
vim.opt.wildmode = "list:longest,full"

-- Search wraps around the end of the file
vim.opt.wrapscan = true

vim.opt.termguicolors = true
