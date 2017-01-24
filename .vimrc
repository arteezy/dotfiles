syntax on
filetype on
filetype indent on
filetype plugin on
compiler ruby

let g:airline_powerline_fonts = 1

set virtualedit=onemore
set nowrap
set number
set ai
set si
set laststatus=2
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch
set mat=2
set nobackup
set nowb
set noswapfile
set noerrorbells
set novisualbell
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set term=xterm-256color
set encoding=utf-8
set backspace=2
set history=500

command W w !sudo tee % > /dev/null

nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
