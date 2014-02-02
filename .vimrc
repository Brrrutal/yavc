set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'jwhitley/vim-matchit'
Bundle 'kien/ctrlp.vim'
" original repos on GitHub
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'

filetype plugin indent on     " required!

" Platform-specific settings
if has('win16') || has('win32') || has('win64') || has('win95')
    " Some Windows-specific setup
    set guifont=Consolas:h13
    set lines=45 columns=140
    winpos 100 50
else
    " Fonts
    " TODO: Check whether it works on Linux.
    set guifont=Andale\ Mono:h14
endif

" Essential
set history=200
filetype plugin on
filetype indent on

set shiftwidth=4
set expandtab
set tabstop=4

" Ignores case when using all lowercase letters in search.
set ignorecase smartcase

set number

" Set command line height to 2
set ch=2

" Turn the beep off
set vb

" Colors
syntax enable

try
    colorscheme zenburn
catch
endtry

" Setting up status line
set laststatus=2
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]

" Various experimental settings
set virtualedit=all

" Make tabs always visible in UI.
" set showtabline=2

" Remove toolbar from UI.
set go-=T

"
" Plugin Settings
"

" Some NERDTree settings
" Toggle the NERD Tree on an off
nmap <C-N> :NERDTreeToggle<CR>

" Close the NERD Tree with Shift-F7
" nmap <S-F7> :NERDTreeClose<CR>

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1
