" Can add neocomplete for autocomplation
" Plugins {{{
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'scrooloose/syntastic'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'klen/python-mode'
Plug 'Yggdroot/indentLine'
call plug#end()
" }}}
" Basic settings {{{
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
set nocompatible
set tabstop=4       " Tabs setting
set shiftwidth=4
set expandtab
set number
set relativenumber
set ruler
set ttyfast
set laststatus=2    " Show line number
set showmatch
set wildmenu        " Autocompletion command menu
set modelines=1     " Line defining section folding

syntax on
" }}}
" Leader key {{{
let mapleader=","
inoremap jk <esc>
" }}}
" Airline {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#fnamemod=':t'
" }}}
" Ctrl - P {{{
let g:ctrlp_show_hidden=0 " Better to use NERDTree for hidden files
let g:ctrlp_follow_symlinks=1
" Ignoring node_modules and other folders
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
"}}}
" Colorscheme {{{
set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
" }}}
" Smooth scrolling on touch screens {{{
map <ScrollWheelUp> <C-Y>
imap <ScrollWheelUp> <C-X><C-Y>
map <ScrollWheelDown> <C-E>
imap <ScrollWheelDown> <C-X><C-E>
" }}}
" Swithich between buffers {{{
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
" }}}
" Extra whitespaces {{{
" <leader>rtw - delete extra whitespaces
highlight ExtraWhitespace ctermfg=167 cterm=underline
match ExtraWhitespace /\s\+$\| \+\ze\t/
nnoremap <Leader>rtw :%s/\s\+$//e<CR>
" }}}
" NERDTree on ctrl+n {{{
map <silent> <C-n> :NERDTreeToggle<CR>
" }}}
" Showing tabs char {{{
set list
set listchars=tab:\¦\ ,eol:\ ,extends:>
" }}}
" Syntastic settings {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1 " :lopen / :lclose for control error window
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=0
let g:syntastic_python_checkers=['pylint']
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_cpp_compiler='clang++'
let g:syntastic_warning_symbol='Δ'
let g:syntastic_error_symbol='✖'
nnoremap <leader>sy :SyntasticCheck<CR>
" }}}
" Python - mode {{{
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leadet>r     Build code
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function
" ]]            Jump on next class or function
" [M            Jump on previous class or method
" ]M            Jump on next class or method
let g:pymode_python = 'python3'
let g:pymode_rope = 1
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
let g:pymode_lint = 1
let g:pymode_lint_checker = "pylint,pyflakes,pep8"
let g:pymode_lint_write = 1
let g:pymode_virtualenv = 1
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
" }}}
" Compiling c++ on <F4> and <F5> {{{
autocmd filetype cpp nnoremap <F4> :!g++ % -ggdb -o %:r <CR>
autocmd filetype cpp nnoremap<F5> :!g++ % -ggdb -o %:r && ./%:r <CR>
" }}}
" Template files loading {{{
function TemplateFile(...)
    " delete all lines
    1,$d

    " load template file
    if a:0 > 0
        silent! execute '0r $HOME/.vim/templates/'.a:1.'.'.expand("%:e")
    else
        silent! execute '0r $HOME/.vim/templates/skeleton.'.expand("%:e")
    endif

    " parse special text in the templates after the load
    %substitute#\[:VIM_EVAL:\]\(.\{-\}\)\[:END_EVAL:\]#\=eval(submatch(1))#ge
endfunction

command -nargs=* Template call TemplateFile( <f-args> )
" }}}

" vim:foldmethod=marker:foldlevel=0
