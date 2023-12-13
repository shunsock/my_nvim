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
  -- Name: vim-jetpack
  -- Feature: Bootstrap Plugin Manager
  -- GitHub: https://github.com/tani/vim-jetpack
  {
    'tani/vim-jetpack',
    opt = true
  },

  -- Name: OneDark
  -- Feature: Color Scheme
  -- GitHub: https://github.com/navarasu/onedark.nvim
  {
    'navarasu/onedark.nvim',
  },

  -- Name: nvim-treesitter
  -- Feature: Set Better Highlight
  -- GitHub: https://github.com/nvim-treesitter/nvim-treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  },


  -- Name: nvim-tree
  -- Feature: File Explorer
  -- GitHub: https://github.com/nvim-tree/nvim-tree.lua
  {
    'nvim-tree/nvim-tree.lua',
    requires = {
       'nvim-tree/nvim-web-devicons',
    },
  },

  -- Name: telescope.lua
  -- Feature: File Search Engine
  -- GitHub: https://github.com/nvim-telescope/telescope.nvim
  -- Dependency: https://github.com/sharkdp/fd
  'nvim-lua/plenary.nvim',
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0'
  },

  -- Name: nvim-web-devicons
  -- Feature: File Icon
  -- GitHub: https://github.com/nvim-tree/nvim-web-devicons
  {
    'nvim-tree/nvim-web-devicons',
  },

  -- Name: lualine
  -- Feature: Make Status Line Better
  -- GitHub: https://github.com/nvim-lualine/lualine.nvim
  {
    'nvim-lualine/lualine.nvim',
    requires = 'kyazdani42/nvim-web-devicons'
  },

  -- Name: coc.nvim
  -- Feature: Make your Vim/Neovim as smart as VS Code
  -- GitHub: https://github.com/neoclide/coc.nvim
  {
    'neoclide/coc.nvim',
    branch='release'
  },

  -- Name: nvim-cursorline
  -- Feature: underlines word under cursor
  -- GitHub: https://github.com/yamatsum/nvim-cursorline
  {
    'yamatsum/nvim-cursorline',
  },

  -- Name: any-jump
  -- Feature: Code jump
  -- GitHub: https://github.com/pechorin/any-jump.vim
  {
    'pechorin/any-jump.vim',
  },
  
  -- Name: Comment.nvim
  -- Feature: change code to comment when using normal mode
  -- GitHub: https://github.com/numToStr/Comment.nvim
  {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end
  },

  -- Name: nvim-colorizer.lua
  -- Feature: show color background of color code
}
