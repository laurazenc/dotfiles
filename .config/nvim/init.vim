let g:python3_host_prog='/usr/bin/python3'


" Fundamentals "{{{
" ---------------------------------------------------------------------

" init autocmd
autocmd!
" set script encoding
scriptencoding utf-8
" stop loading config if it's on tiny or small
if !1 | finish | endif

set termguicolors
set showcmd
set mouse=a
set nocompatible
set number      " Show line numbers
syntax enable
set fileencodings=utf-8,sjis,latin
set encoding=utf-8
set title
set autoindent
set background=dark
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab

set ruler " Show row and column ruler information



set ai "Auto indent
set si "Smart indent

set wildignore+=*/node_modules/*


" }}}



" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif
if has('win32')
  runtime ./windows.vim
endif

runtime ./maps.vim
"}}}


" Highlights "{{{
" ---------------------------------------------------------------------
set cursorline

 "}}}



" Syntax theme "{{{
" ---------------------------------------------------------------------

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5

  " Use Tokio night theme
  let g:tokyonight_style = "night"
  let g:tokyonight_italic_functions = 1
  let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

  " Change the "hint" color to the "orange" color, and make the "error" color bright red
  let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
  \ }
  colorscheme tokyonight
endif


"}}}

