
" Author Aditya Naidu

set nocompatible
set tags=./tags;$HOME "search tags files from current to home dir
syntax on
set incsearch
set background=dark
set autoindent
set smartindent
set showmatch
set expandtab
set tabstop=4
set wildmenu
set history=5000
set cmdheight=2
set ruler
set hlsearch " highlight all search matches
set shiftwidth=4
set t_Co=256 " make text colorful
set number " display line numbers
set laststatus=2
set colorcolumn=100 " color column 100. Makes you realize code line too long 
com! Fjson %!python -m json.tool
com! Twhites %s/\s\+$//e
filetype plugin indent on

" ale plugin setup
let g:ale_completion_enabled = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_exclude_highlights = ['line too long', 'Line too long', 'line-too-long', 'E501']

call plug#begin()
Plug 'dense-analysis/ale'
call plug#end()
