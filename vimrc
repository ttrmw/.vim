execute pathogen#infect()

syntax on
filetype plugin indent on
sy on
colorscheme sweyla642356

" two space tabs
set expandtab
set tabstop=2
set shiftwidth=2
" use relative numbering
set relativenumber
" show statusline
set laststatus=2
let g:airline_powerline_fonts = 1
set guifont=Terminus\ For\ Powerline
set noshowmode
set noruler

set background=dark

command SingleToDouble :%s/\'\(.*\)\'/\"\1\"/gc
command DoubleToSingle :%s/"\([^"]*\)"/'\1'/gc
