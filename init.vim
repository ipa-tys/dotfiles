set encoding=utf-8
set number relativenumber
syntax enable
set noswapfile
set scrolloff=7
set backspace=indent,eol,start

set background=dark

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

inoremap jk <ESC>
let mapleader =' '


call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

Plug 'scrooloose/nerdtree'

Plug 'preservim/nerdcommenter'

Plug 'norcalli/nvim-colorizer.lua'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'davidhalter/jedi-vim'

Plug 'benmills/vimux'

Plug 'jpalardy/vim-slime'

Plug 'kassio/neoterm'

Plug 'sillybun/vim-repl'

call plug#end()

let g:slime_target="tmux"
" let g:slime_python_ipython = 1

:nnoremap <C-e> <C-w> 

let g:neoterm_default_mod='belowright' " open terminal in bottom split
let g:neoterm_size=16 " terminal split size
let g:neoterm_autoscroll=1 " scroll to the bottom when running a command
nnoremap <leader><cr> :TREPLSendLine<cr>j " send current line and move down
vnoremap <leader><cr> :TREPLSendSelection<cr> " send current selection

colorscheme gruvbox

let g:jedi#show_call_signatures = "2"

let g:airline_theme='gruvbox'


" NERDCommenter

nmap <C-_> <Plug>NERDCommenterToggle

vmap <C-_> <Plug>NERDCommenterToggle<CR>gv


" NERDTree

let NERDTreeQuitOnOpen=1

let g:NERDTreeMinimalUI=1

nmap <F2> :NERDTreeToggle<CR>


let g:airline#extensions#tabline#enabled=1

let g:airline#extensions#tabline#fnamemode=':t'

nmap <leader>1 :bp<CR>

nmap <leader>2 :bn<CR>

" nmap <C-w> :bd<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
:tnoremap <Esc> <C-\><C-n>

