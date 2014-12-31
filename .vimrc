set nocompatible              " be iMproved
filetype off                  " required!

" Install Vundle if it doesn't exist (currently solution for non-Windows)
if !(has('win16') || has('win32') || has('win64') || has('win95'))
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
else
    " Experimental Windows support.
    let iCanHazVundle=1
    let vundle_readme=expand('~/vimfiles/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p '~/vimfiles/bundle'
        silent execute '!git clone https://github.com/gmarik/vundle '.expand("~/vimfiles/bundle/vundle")
        let iCanHazVundle=0
    endif
endif

" Setup vundle
if has('win16') || has('win32') || has('win64') || has('win95')
    set rtp+=~/vimfiles/bundle/vundle/
    let path='~/vimfiles/bundle'
    call vundle#begin(path)
else
    set rtp+=~/.vim/bundle/vundle/
    call vundle#begin()
endif

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

" My bundles here:
"
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'jwhitley/vim-matchit'
Plugin 'kien/ctrlp.vim'     
Plugin 'godlygeek/tabular'
Plugin 'bkad/CamelCaseMotion'
Plugin 'plasticboy/vim-markdown'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'

" original repos on GitHub
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'

call vundle#end()         " required!
filetype plugin indent on " required!

" Platform-specific settings
if has('win16') || has('win32') || has('win64') || has('win95')
    " Some Windows-specific setup
    set guifont=InputMonoNarrow:h11
    set lines=45 columns=140
    winpos 100 50
else
    " Fonts
    " TODO: Check whether it works on Linux.
    set guifont=Input:h14
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
