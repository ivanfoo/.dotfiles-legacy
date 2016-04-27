"Pathogen
execute pathogen#infect()

"Generic
filetype plugin indent on
syntax on
set nu
set colorcolumn=80
set noswapfile

"Go
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1

"Neocomplete
let g:neocomplete#enable_at_startup = 1

"Style
set term=screen-256color
let base16colorspace=256
set background=dark
colorscheme molokai
