set nocompatible
filetype off
set rtp+=$VIM/vimfiles/bundle/Vundle.vim
let path = '$VIM/vimfiles/bundle'  
call vundle#begin(path)  
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'maralla/completor.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
call vundle#end() 
filetype plugin indent on 

augroup filetype_note
    autocmd!
	autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>
augroup END

nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
inoremap jk <esc>
nnoremap H ^
nnoremap L $
inoremap <c-u> <esc>gUiw
map <F5> :NERDTreeMirror<CR>
map <F5> :NERDTreeToggle<CR>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <DELETE>

set backspace=indent,eol,start
set shiftwidth=4
set tabstop=4
set softtabstop=4
set nobackup
syntax on
set cindent
set ruler
set number
let &termencoding=&encoding 
set fileencodings=utf-8,gbk

set whichwrap=b,s,<,>,[,]

"execute pathogen#infect()
"call pathogen#helptags()
"filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized

let g:completor_python_binary = '/path/to/python/with/jedi/installed'
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

iabbrev wtf what the fuck

:set statusline=%f         " 文件的路径
:set statusline+=%=        " 切换到右边
:set statusline+=%l        " 当前行
:set statusline+=/         " 分隔符
:set statusline+=%L        " 总行数


" ale {
"let g:ale_set_highlights = 0
let g:ale_fix_on_save = 1
"let g:ale_echo_msg_format = '[#%linter%#] %s [%severity%]'
"let g:ale_statusline_format = ['E?%d', 'W?%d', 'OK']

"let g:ale_sign_error = '>>'
"let g:ale_sign_warning = '__'
"let g:ale_echo_msg_error_str = "error" 
"let g:ale_echo_msg_warning_str = "warning" 
let g:ale_linters = {'python': ['flake8'], 'reStructuredText': ['rstcheck']}
"let g:ale_fixers = {'python': ['autopep8']}

nmap <Leader>en <Plug>(ale_next)
nmap <Leader>ep <Plug>(ale_previous)
nnoremap <Leader>ts :ALEToggle<CR>
" }
