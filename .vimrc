" ************** Settings ************ "
colorscheme molokai
set bg=dark
set t_Co=256
set ttymouse=sgr
set modifiable

" you complete me
let g:ycm_server_keep_logfiles = 0
"let g:ycm_server_log_level = 'debug'
"let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_server_python_interpreter='/usr/bin/python3'
"let g:ycm_python_binary_path='~/miniconda3/bin/python'
"let g:ycm_python_binary_path='./venv/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_max_num_candidates = 100 " 0 means no limit
let g:ycm_confirm_extra_conf = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_key_invoke_completion = ''
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_cache_omnifunc = 0
let g:syntastic_c_checkers = ['make']
let g:syntastic_always_populate_loc_list = 1
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0

let g:clang_debug = 0
let g:clang_library_path = '/lib/clang/10/lib/linux/libclang.so'
let g:ycm_clangd_args=['--header-insertion=never']
let g:clang_snippets_engine='clangd_complete'

let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = 'X'
let g:syntastic_warning_symbol = '⚠'

set completeopt-=preview
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
"Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'preservim/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Lokaltog/vim-powerline'
Plugin 'solyarisoftware/Highlight.vim'

" Pathogen plugin manage: nerdtree
"execute pathogen#infect()

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required

syntax on
set backspace=indent,eol,start

set mouse=a
set number

" 4個空白
"set noexpandtab
set expandtab
set tabstop=4
set shiftwidth=4 " 換行，跳4個空白

set backspace=2
set ai

set colorcolumn=100

" file encoding
set fileencodings=utf8,big5,gbk,latin1
set fileencoding=utf8
"set <C-u>=^U
"set <C-b>=^B
"map <C-u> :set fileencoding=utf8
"map <C-b> :set fileencoding=big5

" search word
set hlsearch

" trailing whitespace (lint)
set nofixendofline 

" **************************************************************************************************
" ******************                  extra utils operations              **************************
" **************************************************************************************************

" change to dos file formate, which end with ^M
nnoremap <F2> :e ++ff=dos<CR>

" reload all file (if changed outside)
nnoremap <F3> :checktime<CR>

" remove trailing space
nnoremap <F10> :%s/\s\+$//e<CR>

" ctrl-f search words
nnoremap <C-F> /

" ctrl-g search words
nnoremap <C-G> :

" resize splited windows
"nnoremap <C-Up>    :resize +2<CR>
"nnoremap <C-Down>  :resize -2<CR>
"nnoremap <C-Left>  :vertical resize +2<CR>
"nnoremap <C-Right> :vertical resize -2<CR>

" **************************************************************************************************
" ******************                 extra plugins operations              *************************
" **************************************************************************************************

" *************** [ NERDComment ] *****************
" Usage:
"      Comment: [Shift-v] , \-c-c
"   Un Comment: [Shift-v] , \-c-u 

" ***************** [ NERDTree ] ******************
nnoremap <F5> :NERDTreeToggle<CR>
" Click in NerdTree & keep cursor into opended file
autocmd VimEnter * wincmd p
" Close Nerdtree when closing file
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Other Nerdtree config
let g:NERDTreeWinSize=30
"let NERDTreeShowHidden=1

" ****************** [ TAGBar ] *******************
" change Tab
nnoremap <C-n> :tabnew<CR>
nnoremap <C-j>     :tabp<CR>
nnoremap <C-l>     :tabn<CR>
nnoremap <C-Left>  :tabp<CR>
nnoremap <C-Right> :tabn<CR>
" move tabs to left/right Alt-左/Alt-右
nnoremap <A-Left>  : -tabmove<cr>
nnoremap <A-Right> : +tabmove<cr>
" Usage :
"   (1) g    + ]         : find all matches
"   (2) ctrl + <mouse-L> : find first
nnoremap <F6> :TagbarToggle<CR>
"nnoremap <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
"nnoremap <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
" Other TAGBar config
let g:tagbar_width = 30

" ********** [ Vim session operation ] ************
nnoremap <C-e> : tabdo NERDTreeClose <bar> TagbarClose <CR>: mksession! ~/.vim/My_Session.vim
nnoremap <C-o> : tabdo NERDTreeFocus <bar> wincmd p <bar> TagbarOpen <bar> wa <CR>
nnoremap <C-p> : tabdo NERDTreeClose <bar> TagbarClose <CR>

" ********** [ Search word (LigtCyan) ] ***********
nnoremap <F4> :set hlsearch! hlsearch?<CR>
hi Search ctermbg=LightCyan

" *************** [ Highlight.vim ] ***************
" hightlight cursor text (ctrl-*)
nnoremap <C-H><F1> : HighlightSearch 1<CR>
nnoremap <C-H><F2> : HighlightSearch 2<CR>
nnoremap <C-H><F3> : HighlightSearch 3<CR>
nnoremap <C-H><F4> : HighlightSearch 4<CR>
nnoremap <C-H><F5> : HighlightSearch 5<CR>
nnoremap <C-H><F6> : HighlightSearch 6<CR>
nnoremap <C-H><F12> : HighlightUndo<CR>


" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line
