" Plugins {{{
  call plug#begin()

  " Features
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'preservim/nerdcommenter'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-airline/vim-airline'
  Plug 'airblade/vim-gitgutter'

  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
  " Plug 'neoclide/coc-solargraph', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}

  " Syntax
  Plug 'gurpreetatwal/vim-avro'
  Plug 'jparise/vim-graphql'
  Plug 'leafgarland/typescript-vim'
  Plug 'lervag/wiki.vim'
  Plug 'pangloss/vim-javascript'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'udalov/kotlin-vim'

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

  " When opening a new file, hide the current one instead of closing the
  " buffer
  set hidden

  set splitbelow
  set splitright
" }}}

" NERDCommenter {{{
  let g:NERDSpaceDelims = 1
" }}}

" NERDTree {{{
  map <C-b> :NERDTreeToggle<CR>

  " Show vim when started without any files
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

  " Close vim when the last open window is NERDTree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}}

" wiki.vim {{{
  let g:wiki_root = "~/Documents/wiki"
" }}}

" vim:foldmethod=marker:foldlevel=0
