" Essential: {{{
set nocompatible
set encoding=utf-8
set langmenu=en_US
let $LANG='en_US'
filetype plugin indent on
" "Security"
set nomodeline
" }}}

" Keymaps: {{{
nmap <F3> :nohl<CR>
inoremap <C-U> <C-G>u<C-U>
inoremap <C-W> <C-G>u<C-W>
" "<F5>: Compile/Run"
autocmd FileType c,cpp,h,hpp,make   nmap <buffer> <F5> :make<CR>
autocmd FileType python nmap <buffer> <F5> :!python %<CR>
autocmd FileType r      nmap <buffer> <F5> :!rscript %<CR>
autocmd FileType perl   nmap <buffer> <F5> :!perl %<CR>
autocmd FileType tex    nmap <buffer> <F5> :!pdflatex %<CR>
" }}}

" Indentation: {{{
set autoindent
set cindent
" "Tabs"
set expandtab
autocmd FileType make setlocal noexpandtab
set shiftwidth=4
set tabstop=4
set smarttab
set softtabstop=4
" }}}

" Completion: {{{
set wildmenu
set completeopt+=longest,menuone,noinsert
set completeopt-=preview
set shortmess+=c
set belloff+=ctrlg
" "Brackets"
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<Up><CR>
" }}}

" Display: {{{
set lazyredraw
set number
set ruler
set laststatus=2
syntax enable
set background=dark
" "Folding"
set foldmethod=syntax
autocmd FileType vim setlocal foldmethod=marker
" }}}

" Misc: {{{
set autoread
set nrformats-=octal
" "Errors"
set noerrorbells
set novisualbell
set t_vb=
set belloff=all
" "Navigation"
set whichwrap+=<,>,[,]
set backspace=indent,eol,start
" "Searching"
set hlsearch
set incsearch
set magic
set ignorecase smartcase
" }}}

" Plugins: {{{
" "MUcomplete" uncomment below if using MUcomplete
" let g:mucomplete#enable_auto_at_startup=1
" if !has('python') && !has('python3')
"     autocmd FileType python setlocal omnifunc=
" endif
" "Airline"
let g:airline_highlighting_cache=1
let g:airline_powerline_fonts=1
" }}}
