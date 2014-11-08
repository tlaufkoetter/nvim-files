let mapleader = ","

" pathogen
call pathogen#infect()
call pathogen#helptags()


" invisible characters
set list
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Syntax
syntax on

" Visuals
colorscheme monokai
if $term!="xterm"
	set t_Co=256
	colorscheme monokai
endif
set number

" Indentation
set ts=4 sts=4 sw=4 noexpandtab

if has("autocmd")
  autocmd Filetype tex setl updatetime=1000
  " Enable file type detection
  filetype on

  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab

  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml
endif

" Windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" .vimrc
nmap <leader>v :tabedit $MYVIMRC<CR>

if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" fugitive settings
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
