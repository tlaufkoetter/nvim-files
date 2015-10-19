" Setup
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'godlygeek/tabular'
Plugin 'nvie/vim-flake8'
Plugin 'w0ng/vim-hybrid'
Plugin 'vim-scripts/vim-polyglot'
call vundle#end()
syntax on
filetype plugin indent on

" Configuration
let mapleader = ","

" Preferences
set autoread
set encoding=utf-8
set expandtab
set fileencodings=utf-8
set hidden
set ignorecase
set list
set listchars=tab:▸\ ,eol:¬
set number
set omnifunc=synstaxcomplete#Complete
set showcmd
set smartcase
set smartindent
set ts=4
set ttyfast
set wrapmargin=0
set wrap

set linebreak
set textwidth=0
set display=lastline
" Behaviour
set foldmethod=manual
if has ("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
	autocmd BufWritePost *.py call Flake8()
endif

" Appearance
colorscheme hybrid
" colorscheme hipster

" Mappings
nmap <leader>v :tabedit $MYVIMRC<CR>
nnoremap <SPACE> za
