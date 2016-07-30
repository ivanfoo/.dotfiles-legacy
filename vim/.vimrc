" Shell fix
set shell=/bin/bash

"Pathogen
execute pathogen#infect()

"Filetype plugins
filetype plugin on 
filetype indent on
syntax on

"Show line numbers
set nu

"Ruler
set colorcolumn=80

"Ignore swp files
set noswapfile

"Refresh files
set autoread

"Go
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1

"Neocomplete
let g:neocomplete#enable_at_startup = 1

"Terraform
let g:terraform_fmt_on_save = 0

"Style
set term=screen-256color
let base16colorspace=256
set background=dark
colorscheme molokai

map ; :
