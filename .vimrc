set nocompatible
filetype off

" Deactivate arrows
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

" Vundle Plugin installer/manage
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required

set path+=**                          " search path to be recursive
set autoindent                        " auto indent 

set number                            " show line numbers in gutter

if exists('+relativenumber')
  set relativenumber                  " show relative numbers in gutter
  endif

syntax on
filetype plugin on

command! Maketags !ctags -R .

" map nertree to ctrl-n
map <C-n> :NERDTreeToggle<CR>
