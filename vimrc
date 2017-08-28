execute pathogen#infect()

syntax on
filetype plugin indent on
sy on
"depending on how you install your theme, you may be able to set the
"colorscheme here.
colorscheme gruvbox

" two space tabs, tabs expand to spaces
set expandtab
set tabstop=2

set shiftwidth=2
" use relative numbering - shows # of lines from current cursor.
set relativenumber
" show statusline. IIRC I set this for powerline
set laststatus=2
" these two pertain to fonts in air/powerline.
let g:airline_powerline_fonts = 1
set guifont=Terminus\ For\ Powerline
"I think this is for power/airline. Doubtful that you'd want it, unless you also
"use powerline.
set noshowmode
"turns off cursor position
set noruler

"expand delimiters on carriage return
let delimitMate_expand_cr=1

"highlights 79th column for encouraging
set colorcolumn=79

set background=dark

let g:gruvbox_italic=1

" useful for aggressive conversion of single to double and back
command SingleToDouble :%s/\'\(.*\)\'/\"\1\"/gc
command DoubleToSingle :%s/"\([^"]*\)"/'\1'/gc

" removes gitgutter & relative numbering so I can copy text out sensibly. This
" might only be an issue in URXVT, idk.
command Selecta set nornu | GitGutterDisable
command PullUp set rnu | GitGutterEnable

" uncomment for editing node_modules in situ w/rails. Forces a rebuild of the
" node bundle on write. Don't uncomment generally as this will slow
" development.
" autocmd BufWritePost * !bundle exec rake tmp:cache:clear
"
set backupdir=~/.vim/backup/
set directory=~/.vim/swap/
set undodir=~/.vim/undo/

let g:ctrlp_max_files=20000
let g:ctrlp_custom_ignore='.git$|\tmp$'
