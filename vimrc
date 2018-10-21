set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" Files Tree Window
Plugin 'scrooloose/nerdtree.git'

" Cool vim status line
Plugin 'vim-airline/vim-airline.git'

" Some airline themes
Plugin 'vim-airline/vim-airline-themes'

" Git visual integration
Plugin 'airblade/vim-gitgutter'

" Syntax checking
Plugin 'vim-syntastic/syntastic'

" Dev-icons
" you can use some of this fonts: https://github.com/ryanoasis/nerd-fonts
Plugin 'ryanoasis/vim-devicons'

" Improved motion
Plugin 'yuttie/comfortable-motion.vim'

" Colored parentheses
Plugin 'kien/rainbow_parentheses.vim'

" For Go developers
Plugin 'fatih/vim-go'

" Cool colorscheme
Plugin 'jacoborus/tender.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" vim naigation on Spanish Keyboard
nnoremap j h
nnoremap k j
nnoremap l k
nnoremap ñ l

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding with the spacebar
nnoremap <space> za

set encoding=UTF-8

" high light things
let python_highlight_all=1
syntax on

" Line numbers
set number

" Foldings
set foldmethod=indent

" Removing whitespaces
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

" Theme
" set background=dark
" colorscheme Tomorrow-Night
" Tender theme
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme tender

" set airline theme
let g:airline_theme = 'light'
