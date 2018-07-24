" Setup {{{
set nocompatible              " be iMproved, required
filetype off                  " required
" }}}

" Plugins {{{
  " set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'

  Plugin 'tpope/vim-sensible'

  " UI
  Plugin 'Xuyuanp/nerdtree-git-plugin'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'scrooloose/nerdtree'

  " Syntax
  Plugin 'hashivim/vim-terraform'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'plasticboy/vim-markdown'
  Plugin 'purescript-contrib/purescript-vim'
  Plugin 'taskpaper.vim'
  Plugin 'w0rp/ale'

  Plugin 'Shougo/vimproc'

  " Haskell
  Plugin 'eagletmt/ghcmod-vim'

  Plugin 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

  "Plugin 'roxma/nvim-completion-manager'

  " ReasonML
  Plugin 'reasonml-editor/vim-reason-plus'

  " All of your Plugins must be added before the following line
  call vundle#end()            " required
" }}}

" Misc {{{
  " Enable intelligent indent
  filetype indent plugin on

  " Enable syntax highlighting
  syntax on

  " Show partial commands in the last line of the screen
  set showcmd

  " Use case-insensitive search
  set ignorecase
  set smartcase

  set mouse=a

  set number

  set shiftwidth=2
  set softtabstop=2
  set expandtab
" }}}

" Language Server Protocol {{{

  let g:LanguageClient_serverCommands = {
      \ 'reason': ['ocaml-language-server', '--stdio'],
      \ 'ocaml': ['ocaml-language-server', '--stdio'],
      \ }

" }}}

" Folds {{{
  set foldlevelstart=20
" }}}

" NERDTree {{{
  map <C-B> :NERDTreeToggle<CR>

  " Open NERDTree by default
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

  " Simplify the UI
  let NERDTreeMinimalUI = 1
  let NERDTreeDirArrows = 1
" }}}

" Splits {{{
  set splitbelow
  set splitright
" }}}

" Wrapping {{{
  set wrap
  set linebreak
  set breakindent
  set breakindentopt=shift:2
" }}}

" Powerline {{{
  python from powerline.vim import setup as powerline_setup
  python powerline_setup()
  python del powerline_setup
" }}}

" Haskell {{{
  nnoremap <Leader>ht :GhcModType<cr>
  nnoremap <Leader>htc :GhcModTypeClear<cr>
" }}}

" Git {{{
  set updatetime=250
" }}}

set modelines=1

" vim:foldmethod=marker:foldlevel=0
