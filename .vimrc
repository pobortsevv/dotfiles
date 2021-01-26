set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'flazz/vim-colorschemes' "Большой набор цветовых схемы
Plugin 'vim-airline/vim-airline' "Powerline внизу
Plugin 'preservim/nerdtree' "Дерево каталогов
Plugin 'ycm-core/YouCompleteMe' "YouCompleteMe
Plugin 'mcchrish/nnn.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

"/////////////////////////////////////
"mappings:

"Вызов дерева
nmap <C-m> :NERDTreeToggle<CR>
"Переключение окон
"/////////////////////////////////////

"Включнеие подцветки синтаксиса
syntax enable
"Установка цвета заднего фона
set background=dark

"/////////////////////
"Установка color-cheme
colorscheme peachpuff

"Хорошие color-схемы:
"solarized
"OceanicNext
"Mustang
"apprentice
"gruvbox
"1989
"256-jungle

"/////////////////////

set autoindent "Автоотступы
set t_Co=256 "Включить 256 цветов
set mousehide "Прятать курсор мыши при вводе
"set mouse=a "Включить мышь
set termencoding=utf8 "Кодировка терминала
set wrap "Включить перенос на другую строку
"Убираем резервные файлы
set nobackup
set noswapfile

set encoding=utf8 "Кодировка файлов по умолчанию
set ruler "Счетчик строк и символов в углу
set visualbell t_vb= "Выключаем звук
set number "Включить нумерацию строк слева
"копирует отступы с текущей строки и добавляет их при добавлении новой
set autoindent
set relativenumber

"c indent = копирует отступы с текущей строки и добавляет их при добавлении новой для *.c файлов
set cindent


"добавляет ) после написания символа (
inoremap ( ()<left>
inoremap () ()


"добавляет } после написания символа {
inoremap { {}<Left><enter><up><end>
inoremap {} {}<Left>


"добавляет " после написания символа "
inoremap " ""<left>
inoremap "" ""


"добавляет ' после написания символа '
inoremap ' ''<left>
inoremap '' ''


inoremap [ []<left>
inoremap [] []




" Turn off linewise keys. Normally, the `j' and `k' keys move the cursor
" down one entire line. with line wrapping on, this can cause the cursor
" to actually skip a few lines on the screen because it's moving from
" line N to line N+1 in the file. I want this to act more visually
" I want `down' to mean the next line on the screen
nmap j gj
nmap k gk

" Quickly insert an empty new line without entering insert mode
nmap <S-e> O<Esc>j
nmap <S-e> o<Esc>k

" Закомментить блок кода vipcc, раскоммент - vipuc
vmap cc :norm ^i//<CR>
vmap uc :norm ^xx<CR>

"Авто скобки
imap {<CR> {<CR>}<ESC>O
