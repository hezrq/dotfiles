vim.cmd 'packadd packer.nvim'

return require('packer').startup(function()
  use 'Yggdroot/indentLine'
  use 'cocopon/iceberg.vim'
  use 'cohama/lexima.vim'
  use 'editorconfig/editorconfig-vim'
  use 'elzr/vim-json'
  use 'itchyny/lightline.vim'
  use 'junegunn/fzf.vim'
  use 'previm/previm'
  use 'tpope/vim-surround'
  use 'tyru/open-browser.vim'
  use 'wbthomason/packer.nvim'
  use { 'neoclide/coc.nvim', branch = 'release' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'phaazon/hop.nvim', branch = 'pre-extmarks' }
end)
