set nocompatible
set encoding=utf-8
set langmenu=en_US
let $LANG='en_US'

" Display: {{{
set number
set ruler
set wildmenu
set laststatus=2
syntax enable
set background=dark
" }}}

" General: {{{
" general "
filetype plugin indent on
set autoread
set mouse=a
set nrformats-=octal
" searching "
set hlsearch
set incsearch
set ignorecase
" tabs and indent "
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set softtabstop=4
" folding "
set foldmethod=syntax
" moving "
set whichwrap+=<,>,[,]
set backspace=indent,eol,start
" errors "
set noerrorbells
set novisualbell
" }}}

" Keymaps: {{{
" general "
inoremap <C-U> <C-G>u<C-U>
inoremap <C-W> <C-G>u<C-W>
" brackets completion "
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<Esc>O
" }}}

" Autocmds: {{{
" filetype "
autocmd FileType c,cpp      nmap <buffer> <F5> :make<CR>
autocmd FileType c,cpp      nmap <buffer> <F6> :!gcc % -O2 -s<CR>
autocmd FileType h,hpp,make nmap <buffer> <F5> :make<CR>
autocmd FileType python     nmap <buffer> <F5> :!python %<CR>
autocmd FileType r          nmap <buffer> <F5> :!rscript %<CR>
autocmd FileType make,tex   setlocal noexpandtab
" }}}

" Completion: {{{
set completeopt+=menuone,noinsert
set shortmess+=c
set belloff+=ctrlg
" MUcomplete " Uncomment below if using MUcomplete
" let g:mucomplete#enable_auto_at_startup=1
" }}}
