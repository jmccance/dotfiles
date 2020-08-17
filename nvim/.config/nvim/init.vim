" Plugins {{{
  call plug#begin()

  Plug 'gurpreetatwal/vim-avro'
  Plug 'lervag/wiki.vim'
  Plug 'vim-airline/vim-airline'

  call plug#end()
" }}}

" The Basics {{{
  let mapleader = ","
  set encoding=utf-8

  set mouse=a

  set number
  set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab autoindent
  set termguicolors
  set title
  set incsearch ignorecase smartcase hlsearch
" }}}

" wiki.vim {{{
  let g:wiki_root = "~/Documents/wiki"
" }}}

" vim:foldmethod=marker:foldlevel=0
