echom ".vimrc loaded, lets get to work!ohyeaah:w"
echom ">^.^<"

set nocompatible    " be iMproved, required
filetype off        " required
syntax enable       " enable syntax processing


" Quicksave command
nnoremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

"Visual stuff
set t_Co=256
set background=dark
colorscheme solarized
"when working with multiple windows:
"
set winheight=15
"mostly python and bash"

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

"Other setting, TODO: organize
set virtualedit=all     " can move the cursor into illegal places
set number		        " show line numbers
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set showmatch           " highlight matching [{()}]
set lazyredraw          " redraw only when we need to.
set showmode
"The 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in  multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer crashes.
set hidden 

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" " dialogue asking if you wish to save changed files.
set confirm
"
" More natural split opening
" Open new split panes to right and bottom, 
" which feels more natural than Vim’s default:
set splitbelow
set splitright

"different key mappings for easy navigation between splits to save 
"a keystroke. So instead of ctrl-w then j, it’s just ctrl-j:
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"to close a windows:
" press <CTRL>c
nnoremap <C-C> <C-W><C-C>

"to close the non acive windows:
"press <CTRL>o
nnoremap <C-O> <C-W><C-O>

 "to select previous window:
 "press <CTRL>p                    
nnoremap <C-P> <C-W><C-P> 

"Create a new empty window vertically
nnoremap <C-N> :vnew<CR>    
 "Create a new empty window horizontally
nnoremap <C-M> :new<CR>
"
"Rotate the windowsRotate windows upwards/leftwards.
"The second window becomes the first one, the third one becomes the second one, etc.
"The first window becomes the last window.  
"The cursor remains in the same window.
nnoremap <C-R> <C-W><C-R>
"
"
"MOVEMENT SETTINGS
let mapleader = ","
:let maplocalleader = "\\"


"edit ~/.vimrc:
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"move lines one below

nnoremap - O<esc>j
"
"
"
" REMAPPING
" move vertically by visual line
nnoremap j gj
nnoremap k gk
"nnoremap lr 
nnoremap <F4> :ls<CR>
nnoremap <F2> :echo 'Current time is ' . strftime('%c')<CR>
nnoremap <F3> :so ~/.vimrc<CR>
 " turn off search highlight

nnoremap <leader><space> :nohlsearch<CR>
 "turn off search highlight
"nnoremap rlv :so<space>.vimrc" 

"most of the stuff is from this great site:"
"http://dougblack.io/words/a-good-vimrc.html" i



" Vim will surround the word in double quotes!
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

inoremap jk <esc>
inoremap <esc> <nop>


"ABBREVIATIONS:

:iabbrev @@  cz.matyas@gmail.com 
:iabbrev ccopy Copyright 2016 Czémán Mátyás, all rights reserved.   
:iabbrev tehn then


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle "manage" Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9' " Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

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

