set encoding=utf-8
set autoindent 
set shiftwidth=4	" auto indent
set tabstop=4
set noexpandtab
set cindent
set nu
set mouse=a
set hlsearch		" highlight
set smartcase		" 검색 시 대소문자 구분 set ts=4			" Tab
set ruler			" show current cursor
set laststatus=2 	" 상태바 표시를 항상한다.
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set t_Co=256

:let mapleader=','

syntax enable
filetype plugin indent on

if has ("syntax")
	syntax on
	filetype on
endif

call plug#begin('~/.vim/plugged')

" NERD tree
Plug 'scrooloose/nerdtree'

" Tagbar
Plug 'majutsushi/tagbar'

" Powerline
Plug 'powerline/powerline'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Syntastic
Plug 'scrooloose/syntastic'

" ale
Plug 'w0rp/ale'

" gruvbox
Plug 'morhetz/gruvbox'

" delimitmat
Plug 'raimondi/delimitmate'

" 
Plug 'fatih/vim-go'

" 
Plug 'nsf/gocode'

" rust
Plug 'rust-lang/rust.vim'

"42 header
Plug 'pbondoer/vim-42header'

call plug#end()

set background=dark
colorscheme gruvbox

" NERDTree mapping
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-j> :bprev<CR>
nnoremap <C-k> :bnext<CR>

" Tagbar mapping
nmap <C-m> :TagbarToggle<CR>

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

let g:syntastic_rust_checkers = ['rustc']

let g:airline_powerline_fonts=1
let g:Powerline_symbols='unicode'
let g:airline_theme='biogoo'

let NERDTreeQuitOnOpen=1

let g:tagbar_left=1
let g:tagbar_autofocus=1
let g:tagbar_width=30
let g:tagbar_autoclose=1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1
let g:ale_linters = {
\  'rust': ['analyzer'],
\}

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let	g:syntastic_c_include_dirs = [ '/Users/joonpark/Desktop/push_swap/v4/includes' ]

map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
