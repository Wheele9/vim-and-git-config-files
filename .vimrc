" Welcome messages
echom ".vimrc loaded, lets get to work!"
echom ">^.^<"

set nocompatible
filetype plugin indent off
syntax off


call plug#begin('~/.local/share/nvim/plugged')
Plug 'christoomey/vim-tmux-navigator'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvie/vim-flake8'
Plug 'tpope/vim-commentary'
Plug 'iCyMind/NeoSolarized'
" Plug 'airodactyl/neovim-ranger'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
" Initialize plugin system
Plug 'w0rp/ale'
call plug#end()


map <leader>f :Ranger<CR>
"press F7 to run flake8

" AirlineTheme solarized
let g:airline_theme='luna'

filetype plugin indent on
filetype off        " required

set wildmenu

"Add $ sign at the end of CHANGE's command workspace
set cpoptions=$

" Backspace works like in other programs
set backspace=2

" Show commands in bottom bar
set showcmd

" Quicksave command
nnoremap <C-Z> :update<CR>
inoremap <C-Z> <esc>:update<CR>
vnoremap <C-Z> v:update<CR>
" to save anytime as anywhere 
"
" Quic exit command
nnoremap <C-X> :wq<CR>
"nnoremap <C-X> :w !sudo tee %<CR>
inoremap <C-X> <esc>:wq<CR>
" Move cursor to the middle of current line
nnoremap gm :call cursor(0, virtcol('$')/2)<CR>


let mapleader =" "
let maplocalleader = "\\"
" Copy Paste words
nnoremap <leader>y yiw
nnoremap <leader>p viw"0p

imap <C-d> <C-[>diwi
" Visual stuff
" let g:solarized_termcolors=256
set t_Co=256
" set background=light


" MULTIPLE WINDOWS SETTINGS
set winheight=15

" More natural split opening
" Open new split panes to right and bottom,
" which feels more natural than Vim’s default
set splitbelow
set splitright


autocmd FileType python set tabstop=4|set shiftwidth=4
autocmd FileType javascript set tabstop=2|set shiftwidth=2
autocmd FileType golang set tabstop=2|set shiftwidth=2


set softtabstop=4   " number of spaces in tab when editing
set shiftround
set expandtab       " tabs are spaces
" show dark column after column 80
set autoindent

" Indent selected block by indentwidth
vnoremap W >gv
vnoremap Q <gv

" Useful settings
set history=700
set undolevels=700

 " Other setting, TODO: organize
set virtualedit=all     " can move the cursor into illegal places
set number              " show line numbers
set cursorline          " highlight current line
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
nnoremap  <C-g> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-p> :TmuxNavigatePrevious<cr>

" Run macro recorded at register q with Q
nnoremap Q @q

"Create a new empty window vertically
nnoremap <C-N> :vnew<CR>
"Create a new empty window horizontally
nnoremap <C-M> :new<CR>
" Open file in a new window
nnoremap <C-B> :vnew<space>
"mostly python and bash"

"Rotate the windows upwards/leftwards.
nnoremap <C-R> <C-W><C-R>

" resize spits"
nnoremap  <S-h> :vertical resize -1<CR>
nnoremap  <S-l> :vertical resize +1<CR>
nnoremap  <S-u> :resize +1<CR>
nnoremap  <S-d> :resize -1<CR>

" join two lines:
"
"
nnoremap <leader>j :join!<CR>

" MOVEMENT SETTINGS


" Edit ~/.vimrc in a new slit:
nnoremap <leader>ev :vsplit $MYVIMRC<cr>


" Move lines one below
nnoremap - O<esc>j
"nnoremap <CR> i<cr><esc>

"""""""""""""
""REMAPPING:"
"""""""""""""

"move vertically by visual line
nnoremap j gj
nnoremap k gk
"search and r"eplace stuff
" highlights all instance of word under cursos
" you can go to the newxt with n, to the prev one with N.
nnoremap n *
" turn off highlighting with m
nnoremap m :nohl<CR>
" start typing the seached word after s
nnoremap s /
" reload file (useful if change happebed outside of VIM))
nnoremap <leader>r :e<CR>
" Load .vimrc file to edit
nnoremap <F2> :e $MYVIMRC<CR>
" Reload .vimrc file
nnoremap <F3> :so ~/.vimrc<CR>
nnoremap <F4> :ls<CR>

 " turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" most of the stuff is from this great site:"
" http://dougblack.io/words/a-good-vimrc.html" i

inoremap jk <esc>
inoremap JK <esc>

"Move lines, or selection of lines:
" move line below
nnoremap <S-j> :m .+1<CR>==
" move line up one line
nnoremap <S-k> :m .-2<CR>==
" move selection of lines
vnoremap <S-k> :m '<-2<CR>gv=gv
vnoremap <S-j> :m '>+1<CR>gv=gv

"""""""""""""""
"ABBREVIATIONS:
"""""""""""""""
iabbrev @@  cz.matyas@gmail.com
iabbrev ccopy Copyright 2016 Czémán Mátyás, all rights reserved.
iabbrev tehn then

syntax on
highlight ColorColumn ctermbg=235
set colorcolumn=81

" slimux settings"
" send lines to other panes, works within vim, and within tmux too
map <Leader>s :SlimuxREPLSendLine<CR>
vmap <Leader>s :SlimuxREPLSendSelection<CR>

set termguicolors
colorscheme NeoSolarized
set background=dark
let g:neosolarized_contrast = "normal"            

" Special characters such as trailing whitespace, tabs, newlines, when displayed 
" using ":set list" can be set to one of three levels depending on your needs. 
" Default value is "normal". Provide "high" and "low" options.
let g:neosolarized_visibility = "high"

" I make vertSplitBar a transparent background color. If you like the origin solarized vertSplitBar
" style more, set this value to 0.
let g:neosolarized_vertSplitBgTrans = 1

" If you wish to enable/disable NeoSolarized from displaying bold, underlined or italicized 
" typefaces, simply assign 1 or 0 to the appropriate variable. Default values:  
let g:neosolarized_bold = 1                
let g:ale_set_highlights = 0
" Use deoplete.
let g:deoplete#enable_at_startup = 1
" use tab to forward cycle
" C-n to select between options 
