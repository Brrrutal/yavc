" Launching pathogen
" Test
execute pathogen#infect()
execute pathogen#helptags()

set history=200
filetype plugin on
filetype indent on

set shiftwidth=4
set expandtab
set tabstop=4

set number

" Set command line height to 2
set ch=2

" Turn the beep off
set vb

" Fonts
set guifont=Andale\ Mono:h14

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


" Some NERDTree settings
" Toggle the NERD Tree on an off
nmap <C-N> :NERDTreeToggle<CR>

" Close the NERD Tree with Shift-F7
" nmap <S-F7> :NERDTreeClose<CR>

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1
