
" To choose the theme
syntax enable
set background=dark
colorscheme solarized

" Shows the line number
set number

" Code folding
set foldmethod=indent
"set foldlevel=99

" removing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" Better searching
set hlsearch

" Show matching parentheses
set showmatch

" Specific python settings
"   when creating or reading .py files
"     -- autoindent
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set smartindent
au BufNewFile,BufRead *.py set fileformat=unix
