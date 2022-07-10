call plug#begin()


" Theme
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" bar
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" Tree
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kyazdani42/nvim-tree.lua'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'williamboman/nvim-lsp-installer'
Plug 'tami5/lspsaga.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'onsails/lspkind-nvim'

" closing tags
Plug 'windwp/nvim-ts-autotag'

" telesccope
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'



call plug#end()
