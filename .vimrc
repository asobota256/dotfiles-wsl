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

" Set the colorscheme
colorscheme default
" Set the background color
set background=dark

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

"""""""""""""""""""""""""" FILE TYPE SPECIFIC OPTIONS """"""""""""""""""""""""""

" textwidth	maximum number of characters per line
" expandtab	insert spaces when the <TAB> key is pressed
" tabstop	tab (^I) character width (in columns)
" shiftwidth	how many columns text is indented with the indent operation
" softtabstop	sets how many columns hitting the <TAB> key indents:
"		- if softtabstop is less then tabstop and expandtab is not set
"		  vim will use a combination of tabs and spaces
"		- if sotfttab equals tabstop end expandtab is not set vim will
"		  always use tabs
"		- if expandtab is set, vim will always use spaces
" smarttab	?

" assembly: max 80 characters per line, indent with tabs
autocmd FileType asm
	\ setlocal textwidth=80

" C: max 80 characters per line, indent with tabs
autocmd FileType c
	\ setlocal textwidth=80

" Java: max 80 characters per line, indent with 4 spaces
" https://www.oracle.com/technetwork/java/codeconventions-150003.pdf
autocmd FileType java
	\ setlocal textwidth=80 |
	\ setlocal expandtab |
	\ setlocal tabstop=4 |
	\ setlocal shiftwidth=4 |
	\ setlocal softtabstop=4 |
	\ setlocal smarttab

" Python: max 79 characters per line, indent with 4 spaces
" https://peps.python.org/pep-0008/
autocmd FileType python
	\ setlocal textwidth=79 |
	\ setlocal expandtab |
	\ setlocal tabstop=4 |
	\ setlocal shiftwidth=4 |
	\ setlocal softtabstop=4 |
	\ setlocal smarttab

" Shell: max 80 characters per line, indent with 2 spaces
" https://google.github.io/styleguide/shellguide.html
autocmd FileType sh
	\ setlocal textwidth=80 |
	\ setlocal expandtab |
	\ setlocal tabstop=2 |
	\ setlocal shiftwidth=2 |
	\ setlocal softtabstop=2 |
	\ setlocal smarttab

" SystemVerilog: max 100 characters per line, indent with 2 spaces
" https://www.systemverilog.io/styleguide
" https://github.com/lowRISC/style-guides/blob/master/VerilogCodingStyle.md
autocmd FileType systemverilog
	\ setlocal textwidth=100 |
	\ setlocal expandtab |
	\ setlocal tabstop=2 |
	\ setlocal shiftwidth=2 |
	\ setlocal softtabstop=2 |
	\ setlocal smarttab

" VHDL: max 100 characters per line, indent with 2 spaces
autocmd FileType vhdl
	\ setlocal textwidth=100 |
	\ setlocal expandtab |
	\ setlocal tabstop=2 |
	\ setlocal shiftwidth=2 |
	\ setlocal softtabstop=2 |
	\ setlocal smarttab
