-- Automatically download Plugin Manager
local jetpackfile = vim.fn.stdpath('data') .. '/site/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim'
local jetpackurl = "https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim"
if vim.fn.filereadable(jetpackfile) == 0 then
  vim.fn.system(string.format('curl -fsSLo %s --create-dirs %s', jetpackfile, jetpackurl))
end

-- Load vim-jetpack
vim.cmd('packadd vim-jetpack')

-- Assuming jetpack.paq is a module that manages plugins
local paq = require('jetpack.paq')
paq {
  -- Bootstrap Plugin Manager
  {
    'tani/vim-jetpack',
    opt = true
  },
  -- Color Scheme
  'navarasu/onedark.nvim',
  -- Set Color to Code
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  },
  -- File Explorer
  {
    'nvim-tree/nvim-tree.lua',
    requires = {
       'nvim-tree/nvim-web-devicons',
    },
  },
  -- File Search Engine
  'nvim-lua/plenary.nvim',
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0'
  },
  -- File Icon
  'nvim-tree/nvim-web-devicons',
}
