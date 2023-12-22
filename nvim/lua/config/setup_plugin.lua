-------------------------------------------------------
-- Automatically download Plugin Manager
-- if it doesn't exist
-- Plugin Manager: vim-jetpack
-- GitHub        : https://github.com/tani/vim-jetpack
-------------------------------------------------------
local jetpackfile = vim.fn.stdpath('data') .. '/site/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim'
local jetpackurl = "https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim"
if vim.fn.filereadable(jetpackfile) == 0 then
  vim.fn.system(string.format('curl -fsSLo %s --create-dirs %s', jetpackfile, jetpackurl))
end


------------------------------------------------------
-- Load vim-jetpack
------------------------------------------------------
vim.cmd('packadd vim-jetpack')

-- Assuming jetpack.paq is a module that manages plugins
local paq = require('jetpack.paq')

-- Add plugins inside the table
paq {
  -- Name: vim-jetpack
  -- Feature: Bootstrap Plugin Manager
  -- GitHub: https://github.com/tani/vim-jetpack
  {
    'tani/vim-jetpack',
    opt = true
  },

  {
    'yeddaif/neovim-purple',
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
    tag = '0.1.2',
  },
  { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },

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
  -- GitHub: https://github.com/norcalli/nvim-colorizer.lua
  {
    'norcalli/nvim-colorizer.lua',
  },

  -- Name: gitsigns.nvim
  -- Feature: show git diff
  -- GitHub: https://github.com/lewis6991/gitsigns.nvim
  {
    'lewis6991/gitsigns.nvim',
  },

  -- Name: auto-save.nvim
  -- Feature: auto save file
  -- GitHub: https://github.com/pocco81/auto-save.nvim
  {
    'pocco81/auto-save.nvim',
  },

  -- Name: bufferline.nvim
  -- Feature: show buffer line
  -- GitHub: https://github.com/akinsho/bufferline.nvim
  {
    'akinsho/bufferline.nvim',
  },

  -- Name: nvim-autopairs
  -- Feature: auto complete bracket
  -- GitHub: https://github.com/windwp/nvim-autopairs
  {
    'windwp/nvim-autopairs',
  },

  -- Name: mini.indentscope
  -- Feature: show indent scope
  -- GitHub: https://github.com/echasnovski/mini.nvim
  {
    'echasnovski/mini.indentscope',
  },

  -- Name: copilot.vim
  -- Feature: auto complete code
  -- GitHub: https://github.com/github/copilot.vim
  {
    'github/copilot.vim',
  },
}
