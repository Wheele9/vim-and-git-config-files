"
"
"
" Welcome messages
echom ".vimrc loaded, lets get to work!ohyeaah"
echom ">^.^<"


" vundle {{{1


" needed to run vundle (but i want this anyways)
set nocompatible

" vundle needs filtype plugins off
" i turn it on later
filetype plugin indent off
syntax off

" set the runtime path for vundle
set rtp+=~/.vim/bundle/Vundle.vim

" start vundle environment
call vundle#begin()

" list of plugins {{{2
" let Vundle manage Vundle (this is required)
"old: Plugin 'gmarik/Vundle.vim'
Plugin 'VundleVim/Vundle.vim'

" to install a plugin add it here and run :PluginInstall.
" to update the plugins run :PluginInstall! or :PluginUpdate
" to delete a plugin remove it here and run :PluginClean
" 

" YOUR LIST OF PLUGINS GOES HERE LIKE THIS:
Plugin 'bling/vim-airline'

" add plugins before this
call vundle#end()

" now (after vundle finished) it is save to turn filetype plugins on
filetype plugin indent on
syntax on
set nocompatible    " be iMproved, required
filetype off        " required
syntax enable       " enable syntax processing




"Add $ sign at the end of CHANGE's command workspace
set cpoptions=$

" Backspace works like in other programs
set backspace=2

" Show commands in bottom bar
set showcmd



" Quicksave command
nnoremap <C-Z> :update<CR>

" Move cursor to the middle of current line
nnoremap gm :call cursor(0, virtcol('$')/2)<CR>


let mapleader =" "
let maplocalleader = "\\"

" Copy Paste words
nnoremap <leader>y yiw
nnoremap <leader>p viw"0p

imap <C-d> <C-[>diwi
" Visual stuff
let g:solarized_termcolors=256
set t_Co=256
set background=light
colorscheme solarized

" MULTIPLE WINDOWS SETTINGS

set winheight=15

" More natural split opening
" Open new split panes to right and bottom,
" which feels more natural than Vim’s default
set splitbelow
set splitright

" different key mappings for easy navigation between splits to save
" a keystroke. So instead of ctrl-w then j, it’s just ctrl-j:
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
" To close a windows:
" press <CTRL>c
nnoremap <C-C> <C-W><C-C>

" To close the non acive windows:
" press <CTRL>o
nnoremap <C-O> <C-W><C-O>

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-p> :TmuxNavigatePrevious<cr>


"
"
"
" To select previous window:
" press <CTRL>p
"nnoremap <C-P> <C-W><C-P>

"Create a new empty window vertically
nnoremap <C-N> :vnew<CR>
"Create a new empty window horizontally
nnoremap <C-m> :split<CR>
" Open file in a new window
nnoremap <C-B> :vnew<space>

"mostly python and bash"

set tabstop=4       " number of visual spaces per TAB



set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4
set shiftround
set expandtab       " tabs are spaces
set colorcolumn=80
set autoindent

" Indent selected block by indentwidth
vnoremap W >gv
vnoremap Q <gv

"
"
" Useful settings
 set history=700
 set undolevels=700

 " Other setting, TODO: organize
set virtualedit=all     " can move the cursor into illegal places
set number                      " show line numbers
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set ruler 

" Case insensitive search options
set ignorecase
set smartcase






set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" Disable stupid backup and swap files
" - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile


set showmatch           " highlight matching [{()}]
":wset lazyredraw          " redraw only when we need to.
set noshowmode
"" The 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first.
set hidden

" Always display the status line, even if only one window is displayed
set laststatus=2
"Set tab label to show tab number, filename, if modified ('+' is shown if the
"current window in the tab has been modified):
set guitablabel=%N/\ %t\ %M


" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

"Rotate the windows upwards/leftwards.
nnoremap <C-R> <C-W><C-R>


let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"x":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }
" MOVEMENT SETTINGS


" Edit ~/.vimrc in a new slit:
nnoremap <leader>ev :vsplit $MYVIMRC<cr>


" Move lines one below
nnoremap - O<esc>j


"""""""""""""
""REMAPPING:"
"""""""""""""

"move vertically by visual line
nnoremap j gj
nnoremap k gk


"nnoremap lr
nnoremap <F4> :ls<CR>
nnoremap <F2> :echo 'Current time is ' . strftime('%c')<CR>
nnoremap <F3> :so ~/.vimrc<CR>


 " turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
  "reload .vimrc file
nnoremap rlv :so<space>.vimrc"<CR>

" most of the stuff is from this great site:"
" http://dougblack.io/words/a-good-vimrc.html" i




" Vim will surround the word in double quotes!
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

inoremap jk <esc>

" Insert newline without entering insert mode
nnoremap <CR> o<Esc>
nnoremap <CR> O<Esc>
"""""""""""""""
"ABBREVIATIONS:
"""""""""""""""
iabbrev @@  cz.matyas@gmail.com
iabbrev ccopy Copyright 2016 Czémán Mátyás, all rights reserved.
iabbrev tehn then



"""""""""""""""
"PLUGINS:""""""
"""""""""""""""





filetype plugin indent on






