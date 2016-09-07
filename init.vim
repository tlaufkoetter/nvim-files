" Setup
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-repeat'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'burnettk/vim-angular'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'Rykka/riv.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Shougo/deoplete.nvim'
call vundle#end()

let python_highligh_all=1
let g:riv_python_rst_hl=1
syntax on
filetype plugin indent on

" Configuration
let mapleader = ","
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/venv/*,*.pyc

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
set relativenumber
set number
set omnifunc=synstaxcomplete#Complete
set showcmd
set smartcase
set smartindent
set ts=4
set sw=4
set sts=4
set wrapmargin=0
set wrap

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.config/nvim/UltiSnips"
let g:deoplete#enable_at_startup = 1

set linebreak
set textwidth=0
set display=lastline

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Behaviour
set foldmethod=manual

" Appearance
set background=dark
let g:hybrid_custom_term_colors = 1
colorscheme hybrid

" Mappings
nmap <leader>v :tabedit $MYVIMRC<CR>
nnoremap <SPACE> za
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
