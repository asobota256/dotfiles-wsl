""""""""""""""""""""""""""""""""""" GENERAL """"""""""""""""""""""""""""""""""""

" Disable vi compatibility
set nocompatible

" Set internal character encoding to UTF-8
set encoding=utf-8

" Set how many lines of history vim remembers
set history=100

" Do not create the ~/.viminfo file
set viminfofile=NONE

" Enable file type detection
filetype on
" Use file type specific plugins
filetype plugin on
" Use file type specific indentation
filetype indent on

""""""""""""""""""""""""""" USER INTERFACE BEHAVIOR """"""""""""""""""""""""""""

" Don't redraw the screen while executing macros
set lazyredraw
" Indicate a fast terminal connection
set ttyfast

" Turn on command line completion
set wildmenu

" Turn on regular expressions
set magic

" Wrap lines
set wrap
" Continue wrapped lines visually indented
set breakindent

" Disable error bells
set belloff=all
set noerrorbells
set novisualbell
set t_vb=

" Disable shortening of file messages
set shortmess-=f
set shortmess-=i
set shortmess-=l
set shortmess-=n
set shortmess-=x

" Disable the vim intro message
set shortmess+=I

"""""""""""""""""""""""""" USER INTERFACE APPEARANCE """""""""""""""""""""""""""

" Show the command bar
set showcmd
" Set the height of the command bar
set cmdheight=1

" Show current mode
set showmode

" TODO: Set the cursor appearance
"set guicursor=n-v-c:block,o:hor50,i-ci:hor15,r-cr:hor30,sm:block

" Display relative line numbers
set number relativenumber

""""""""""""""""""""""""""""""""" STATUS LINE """"""""""""""""""""""""""""""""""

" Hide the status line
set laststatus=0

" Show the cursor position at all times
set ruler
" TODO: Format the ruler string content
"set rulerformat=

""""""""""""""""""""""""""""""" COLORS AND FONTS """""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax on

""""""""""""""""""""""""""" FILES, BACKUPS AND UNDO """"""""""""""""""""""""""""

" Turn backup off
set nobackup
set noswapfile

""""""""""""""""""""""""""""" TEXT AND INDENTATION """""""""""""""""""""""""""""

" Disables automatic commenting on newline
" Sets the text formatting options as 'formatoptions=cql'
autocmd FileType *
	\ set formatoptions-=r |
	\ set formatoptions-=o

" Insert one space after . ? and ! with a join command
set nojoinspaces

"""""""""""""""""""""""""""""""""" SEARCHING """""""""""""""""""""""""""""""""""

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

""""""""""""""""""" MOVING AROUND, TABS, WINDOWS AND BUFFERS """""""""""""""""""

" Show at least 1 line above and below the current cursor position
set scrolloff=1

" Let backspace delete EoL, automatic indentation and past start of insert
set backspace=eol,start,indent

""""""""""""""""""""""""""""""""""""" MISC """""""""""""""""""""""""""""""""""""

" Automatically delete all trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Clear search highlighting when the <ESC> key is pressed
nnoremap <silent> <ESC> :nohlsearch<CR><ESC>
