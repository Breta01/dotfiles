set autowrite
set backspace=2
set encoding=utf-8
set hlsearch
set ignorecase
set incsearch
set mouse=a
set smartcase
set smartindent
set title
set number
set tabstop=4
set showmatch

set shell=zsh

set wildmenu " Tab completion in vim comand
" Remap esc on jk
inoremap jk <esc>


" Can add neocomplete for autocomplation
" Add neomake instead of syntaxis
" Check vim bootstram for configuration
" ? Add neoterm

let g:python3_host_prog='/data/data/com.termux/files/usr/bin/python'
let g:python_host_prog='/data/data/com.termux/files/usr/bin/python'

" Chang Leader key
let mapleader=","

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#fnamemod=':t'



let g:ctrlp_show_hidden=0 " Can be deleted for faster indexing
let g:ctrlp_follow_symlinks=1
syntax on

let g:gruvbox_termcolors=256
set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

" Scroll only one line for mouse wheel events to get smooth scrolling on touch screens
map <ScrollWheelUp> <C-Y>
imap <ScrollWheelUp> <C-X><C-Y>
map <ScrollWheelDown> <C-E>
imap <ScrollWheelDown> <C-X><C-E>

"execute pathogen#infect()
"filetype plugin indent on
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

" Underline extra whitespaces and delete it be leader + rtw
highlight ExtraWhitespace ctermfg=167 cterm=underline
match ExtraWhitespace /\s\+$\| \+\ze\t/
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

" NERDTree on ctrl+n
map <silent> <C-n> :NERDTreeToggle<CR>

" Show tabs
set list
set listchars=tab:\¦\ ,eol:\ ,

" Syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list=1
"let g:syntastic_auto_loc_list=0 " :lopen / :lclose for controling error window
"let g:syntastic_check_on_open=0
"let g:syntastic_check_on_wq=0
"let g:syntastic_python_checkers=['pylint']
"let g:syntasitc_javascript_checkers=['eslint']

"let g:syntastic_warning_symbol='Δ'
"let g:syntastic_error_symbol='✖'

"nnoremap <leader>sy :SyntasticCheck<CR>
