""""""" GENERAL """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable vi-compatibility mode
set nocompatible

" Set internal character encoding to UTF-8
set encoding=utf-8

" Enable file type detection
filetype on
" Use file type specific plugins
filetype plugin on
" Use file type specific indentation
filetype indent on

" Don't redraw the screen while executing macros
set lazyredraw
" Indicate a fast terminal connection
set ttyfast

""""""" WINDOW AND BUFFER """"""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax on

" Display line numbers relative to the cursor and the actual line number
" of the current line
set number
set relativenumber

" Show at least one line above and below the current cursor
set scrolloff=1

" Wrap lines longer than the window width
set wrap
" Continue wrapped lines visually indented
set breakindent

""""""" STATUS LINE """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Hide the status line
set laststatus=0

""""""" COMMAND LINE """""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show the command bar
set showcmd
" Set the height of the command bar
set cmdheight=1

" Show current mode
set showmode

" Show the cursor position at all times
set ruler

" Turn on command line completion
set wildmenu

""""""" MESSAGES """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Don't shorten the file messages
set shortmess-=f
set shortmess-=i
set shortmess-=l
set shortmess-=n
set shortmess-=x

" Don't display the vim intro message
set shortmess+=I

""""""" HISTORY AND BACKUP """""""""""""""""""""""""""""""""""""""""""""""""""""

" Set how many lines of history vim remembers
set history=100

" Do not create the ~/.viminfo file
set viminfofile=NONE

" Turn backup off
set nobackup
set noswapfile

""""""" EDITING """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Let backspace delete EoL, automatic indentation and past start of insert
set backspace=eol,start,indent

" Insert one space after '.', '?' and '!' with a join command instead of two
set nojoinspaces

" Automatically delete all trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

""""""" SEARCHING """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn on regular expressions
set magic

" Ignore case when searching
set ignorecase
" Override ignorecase if the search pattern contains uppercase characters
set smartcase

" Search for the string while it is being typed
set incsearch

" When search reaches end of file, wrap around to the beginning
set wrapscan

" Highlight search results
set hlsearch

""""""" KEYMAPS """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Clear search highlighting when the escape key is pressed
nnoremap <silent> <Esc> :nohlsearch<CR><Esc>
