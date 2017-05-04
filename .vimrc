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

imap <LEADER>' ''<ESC>i
imap <LEADER>" ""<ESC>i
imap <LEADER>[ []<ESC>i
imap <LEADER>{ {}<ESC>i
imap <LEADER>( ()<ESC>i

nmap g<C-O> o<ESC>k
nmap gO O<ESC>j

" Vundle Plugin installer/manage
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'powerline/fonts'

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

" autocomplete scroll up an down to j and k
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

" airline conf
set laststatus=2

" Color Scheme molokai
colorscheme molokai
