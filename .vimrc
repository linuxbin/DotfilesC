" .vimrc

" Enable pathogen for plugin management
execute pathogen#infect()

" Allow saving of files as sudo
cmap w!! w !sudo tee > /dev/null %

" Highlight characters over 80
augroup vimrc_autocmds
    autocmd!
    autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#111111
    autocmd BufEnter * match OverLength /\%81v.*/
augroup END

" Make Vim able to edit crontab files
set backupskip=/tmp/*,/private/tmp/*

" Enable backups and disable swap file
set backup
set noswapfile
set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//

" Make those folders automatically if they don't already exist
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif 
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif 
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

" Resize splits when the window is resized
au VimResized * :wincmd =

set modelines=1
set showmode
set history=700
set undofile
set undoreload=10000
set matchtime=3
set splitbelow
set splitright
set autowrite
set autoread
set shiftround
set title
set linebreak
set colorcolumn=+1

" Enable filetype plugins
filetype plugin on 
filetype indent on

" Always show current position
set ruler

" Clipboard settings
set clipboard=unnamedplus

" Command bar height
set cmdheight=2

" Buffer settings
set hid

" Configure backspace behavior
set backspace=eol,start,indent 
set whichwrap+=<,>,h,l

" Search settings
set ignorecase
set smartcase
set hlsearch
set incsearch

" Performance settings
set lazyredraw

" Regex settings
set magic

" Matching brackets
set showmatch

" Disable error bells
set noerrorbells 
set novisualbell 
set t_vb=
set t_ut=

set tm=500

" Colors and Fonts
set t_Co=256
syntax enable
set background=dark
highlight Normal ctermfg=purple guifg=purple

" Text, tab, and indent settings
set expandtab
set smarttab
set shiftwidth=4 
set tabstop=4
set lbr 
set tw=500
set ai 
set si 
set wrap

" Visual mode mappings
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Status line settings
set laststatus=1
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" Moving around, tabs, windows, and buffers
map + <c-w>-
map - <c-w>+
map > <c-w><
map < <c-w>>
map <leader>bd :Bclose<cr>
map <leader>ba :1,1000 bd!<cr>
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
map <leader>cd :cd %:p:h<cr>:pwd<cr>

try
    set switchbuf=useopen,usetab,newtab
    set stal=2 
catch
endtry

autocmd BufReadPost *
 \ if line("'\"") > 0 && line("'\"") <= line("$") |
 \  exe "normal! g`\"" |
 \ endif

set viminfo^=%

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Help settings
set completeopt=menuone,noinsert,noselect
