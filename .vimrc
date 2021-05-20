set encoding=utf-8
set autoindent 
set cindent
set nu
set hlsearch		" highlight
set	smartcase		" 검색 시 대소문자 구분 set ts=4			" Tab
set ruler			" show current cursor
set shiftwidth=4	" auto indent
set laststatus=2 	" 상태바 표시를 항상한다.
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set t_Co=256

:let mapleader=','

syntax enable
if has ("syntax")
	syntax on
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

call plug#end()

set background=dark
colorscheme gruvbox

" NERDTree mapping
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

" Tagbar mapping
nmap <F8> :TagbarToggle<CR>

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

let g:airline_powerline_fonts=1
let g:Powerline_symbols='unicode'
let g:airline_theme='biogoo'

let g:tagbar_left=1
let g:tagbar_autofocus=1

map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
