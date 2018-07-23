set langmenu=en_US
let $LANG='en_US'
set encoding=utf-8
set nocompatible

"{{{ Display settings:
set guifont=Source\ Code\ Pro:h12
set cursorline
set number
set guioptions-=T
syntax enable
set background=dark
let g:solarized_menu=0
colorscheme solarized
"}}}

"{{{ General settings:
"general"
filetype plugin indent on
set autoread
"searching"
set hlsearch
set incsearch
"tabs and indent"
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
"moving"
set whichwrap+=<,>,[,]
set backspace=indent,eol,start
"errors"
set noerrorbells
set novisualbell
set t_vb=
"}}}

"{{{ Keymaps:
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap {<CR> {<CR>;<CR>}<up><Esc>$xa
"}}}

"{{{ Useful but unused by me
"set ruler
"set tm=500
"set history=1000
"set spelllang=en_US
"set magic
"set laststatus=2
"set wildmenu
"}}}
