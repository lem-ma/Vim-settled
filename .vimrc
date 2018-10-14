" Basics: {{{
set nocompatible
set encoding=utf-8
set langmenu=en_US
let $LANG='en_US'
" }}}

" General: {{{
filetype plugin indent on
set autoread
set nrformats-=octal
set foldmethod=syntax
set wildmenu
set shortmess+=I
" navigation "
set whichwrap+=<,>,[,]
set backspace=indent,eol,start
" searching "
set hlsearch
set incsearch
set ignorecase
" tab settings "
set tabstop=4
set expandtab
set smarttab
set softtabstop=4
autocmd FileType make,tex setlocal noexpandtab
" indentation "
set shiftwidth=4
set autoindent
set smartindent
" error handling "
set noerrorbells
set novisualbell
" }}}

" Display: {{{
set number
set ruler
set laststatus=2
syntax enable
set background=dark
" }}}

" Keymaps: {{{
inoremap <C-U> <C-G>u<C-U>
inoremap <C-W> <C-G>u<C-W>
" brackets completion "
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<Esc>O
" compilation "
autocmd FileType c,cpp,h,hpp,make   nmap <buffer> <F5> :make<CR>
autocmd FileType python nmap <buffer> <F5> :!python %<CR>
autocmd FileType r      nmap <buffer> <F5> :!rscript %<CR>
" }}}

" Completion: {{{
set completeopt+=longest,menuone,noinsert
set completeopt-=preview
set shortmess+=c
set belloff+=ctrlg
" MUcomplete " uncomment below if using MUcomplete
"let g:mucomplete#enable_auto_at_startup=1
"if !has('python') && !has('python3')
"    autocmd FileType python setlocal omnifunc=
"endif
" }}}
