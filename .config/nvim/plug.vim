call plug#begin()


" Theme
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" bar
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" Tree
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }


" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'williamboman/nvim-lsp-installer'
Plug 'tami5/lspsaga.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'onsails/lspkind-nvim'



call plug#end()
