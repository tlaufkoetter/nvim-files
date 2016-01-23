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
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-salve'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-repeat'
Plugin 'reedes/vim-pencil'
Plugin 'junegunn/goyo.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'godlygeek/tabular'
Plugin 'nvie/vim-flake8'
Plugin 'w0ng/vim-hybrid'
Plugin 'vim-scripts/vim-polyglot'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
call vundle#end()
syntax on
filetype plugin indent on

" Configuration
let mapleader = ","
let g:pandoc#spell#enabled = 0

" Preferences
set autoread
set cursorline
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
autocmd bufwritepost .vimrc source $MYVIMRC
autocmd BufWritePost *.py call Flake8()
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init({wrap:hard})
  autocmd FileType text         call pencil#init()
augroup END

" Appearance
set background=dark
colorscheme hybrid

" Mappings
nmap <leader>v :tabedit $MYVIMRC<CR>
nnoremap <SPACE> za
