" Automatic install of vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call plug#end()

let g:netrw_liststyle=3
let g:netrw_alto=1
let g:netrw_altv=1
let g:netrw_localrmdir='rm -r'
let &softtabstop=&shiftwidth

set paste
set nocp
set laststatus=2
set number
set tabstop=1
set expandtab
set shiftwidth=2
set smarttab
set noswapfile
set backupdir=./.backup,.,/tmp
set directory=.,/.backup,/tmp
set complete=.,b,u,]
set incsearch
set hlsearch
set ignorecase
set path+=app/**

map <Enter> o<ESC>
map <S-Enter> O<ESC>

colorscheme slate
