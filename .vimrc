set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'flazz/vim-colorschemes' 
Plugin 'preservim/nerdtree' 
Plugin '42og/stdheader.vim'

call vundle#end()
filetype plugin indent on 

set background=dark
colorscheme peachpuff

if has("gui_running")
	set background=dark
	syntax on
	set hlsearch
	colorscheme gruvbox 
	set bs=2
	set ai
	set ruler
endif

syntax enable

set autoindent
set t_Co=256 
set mousehide
"set mouse=a 
set termencoding=utf8 
set wrap 
set nobackup
set noswapfile
set encoding=utf8 
set ruler 
set visualbell t_vb=
set number 
set autoindent
set relativenumber
set cindent


nmap <C-m> :NERDTreeToggle<CR>
nmap j gj
nmap k gk
nmap <S-e> O<Esc>j
nmap <S-e> o<Esc>k

vmap cc :norm ^i//<CR>
vmap uc :norm ^xx<CR>

noremap { {}<Left><enter><up><end>
inoremap {} {}<Left>

imap {<CR> {<CR>}<ESC>O
