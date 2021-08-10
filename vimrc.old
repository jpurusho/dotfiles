" Use Vim settings, rather then Vi settings (much better!).
"
" Use pathogen to load additional plugins to runtime
" =======================--==========================
" For some reason, pathogen does not seem to work on mac. Debug later
" filetype off
" execute pathogen#infect('~/dev/vim/nerdtree/{}', '~/dev/vim/settings/{}')
" filetype on
"
" This must be first, because it changes other options as a side effect.
set nocompatible
"
"
" ================ General Config ====================
"
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set mouse-=a                    "Disable mouse usage (for visual mode)
set hlsearch                    "Highlight search
set clipboard=unnamed
set tags=./tags;/git/cypress
set viminfo="NONE"
"
" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden
"
"   "turn on syntax highlighting
if has("syntax")
    syntax on
endif
"
" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all 
" the plugins.
let mapleader=","
"
" ================ Turn Off Swap Files ==============
"
" set noswapfile
" set nobackup
" set nowb
"
" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
"
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile
"
" ================ Indentation ======================
"
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=4
set expandtab
"
filetype plugin on
filetype indent on
"
" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·
"
set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points
"
" ================ Folds ============================
"
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default
"
" ================ Completion =======================
"
set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
"set wildignore+=vendor/rails/**
"set wildignore+=vendor/cache/**
"set wildignore+=*.gem
"set wildignore+=log/**
"set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
"
" ================ Scrolling ========================
"
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

"=== Call pathogen, for loading vim bundles ===========
"=== Pathogen is installed in .vim/autoload ===========
"=== This is the standard way to load vim plugins =====
call pathogen#infect()

" ============ Copy to OS clipboard ===============
set clipboard=unnamedplus

" ============ NERDTree setting ===================
"Show hidden files in NerdTree
"let NERDTreeShowHidden=1
"
""autopen NERDTree and focus cursor in new document
"autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
"
"Show hidden files in NerdTree
let NERDTreeShowHidden=0
let g:NERDTreeWinPos = "right"
"
"Key mappings for tab-switching
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
"map <C-n> :tabnew<CR>

"======End of vimrc ========
