" Launching pathogen
execute pathogen#infect()
execute pathogen#helptags()

set history=200
filetype plugin on
filetype indent on

set shiftwidth=4
set expandtab
set tabstop=4

set number

" Fonts
set guifont=Andale\ Mono:h14

" Colors
syntax enable

try
    colorscheme xoria256
catch
endtry

" Various experimental settings

" Make tabs always visible in UI.
" set showtabline=2

" Remove toolbar from UI.
set go-=T
