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
Plugin 'sainnhe/everforest'
Plugin 'sheerun/vim-polyglot'
Plugin 'mileszs/ack.vim'

call vundle#end()
filetype plugin indent on 

if has('termguicolors')
  set termguicolors
endif
" For dark version.
set background=dark
" This configuration option should be placed before `colorscheme everforest`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'hard'
let g:everforest_enable_italic = 1
let g:everforest_cursor = 'green'
let g:everforest_better_performance = 1

colorscheme everforest

if has("gui_running")
	set background=dark
	syntax on
	set hlsearch
	colorscheme everforest
	set bs=2
	set ai
	set ruler
endif

syntax enable

filetype plugin on
set autoindent
set t_Co=256 
set mousehide
set tabstop=4
set shiftwidth=4
"set expandtab
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

" Клавиши для комментов (сейчас использую vim-comment)

" vmap cc :norm ^i//<CR>
" vmap uc :norm ^xx<CR>

noremap { {}<Left><enter><up><end>
inoremap {} {}<Left>

imap {<CR> {<CR>}<ESC>O
map <C-K> :pyf <path-to-this-file>/clang-format.py<cr>
imap <C-K> <c-o>:pyf <path-to-this-file>/clang-format.py<cr>
