" =====================
" || NECESSARY SETUP ||
" =====================

set nocompatible

set shell=/bin/sh

call pathogen#infect()
call pathogen#helptags()

" ======================
" || GENERAL SETTINGS ||
" ======================

syntax on

filetype plugin indent on

set modelines=0

set autochdir

set noswapfile

filetype on

" ===================
" || LOOK AND FEEL ||
" ===================

set background=dark

colorscheme solarized

set cursorline

set number

" no visual bell
set noeb vb t_vb=

set laststatus=2

" change background character outside 80 characters
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=black

" enable vim powerline
set encoding=utf-8
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
let g:Powerline_symbols="fancy"

" =============
" || EDITING ||
" =============

set undofile
set undodir=~/.vim/undo
set undolevels=10000

set textwidth=80
set lw=80
set wrap

set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

set autoindent

set backspace=2

set splitright

let delimitMate_expand_cr = 1

" ==============
" || MAPPINGS ||
" ==============

nnoremap ; :
nnoremap : ;

" sudo write protected file without reopening
cmap w!! w !sudo tee % >/dev/null

" =========================
" || SYNTAX HIGHLIGHTING ||
" =========================

au BufNewFile,BufRead *.ums set filetype=ums
au BufNewFile,BufRead *.imp set filetype=scheme
au BufNewFile,BufRead *.smt set filetype=smalltalk
au BufNewFile,BufRead *.fish set filetype=fish

" disable arrow keys
nnoremap <Up>      <NOP>
nnoremap <Down>    <NOP>
nnoremap <Left>    <NOP>
nnoremap <Right>   <NOP>
inoremap <Up>      <NOP>
inoremap <Down>    <NOP>
inoremap <Left>    <NOP>
inoremap <Right>   <NOP>

" ===============
" || SYNTASTIC ||
" ===============

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_enable_signs = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_haskell_checkers = ['hdevtools', 'hlint']
