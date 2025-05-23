set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Plugin 'valloric/youcompleteme'
Plugin 'w0rp/ale'
" Plugin 'vimwiki/vimwiki'
Plugin 'mattn/emmet-vim'
Plugin 'myusuf3/numbers.vim'
Plugin 'christoomey/vim-tmux-navigator'
" Plugin 'tpope/vim-obsession'
" Plugin 'dhruvasagar/vim-prosession'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'embark-theme/vim', {'name': 'embark'}

Plugin 'bfrg/vim-cpp-modern'
Plugin 'shmup/vim-sql-syntax'
Plugin 'hdima/python-syntax'
" Plugin 'xolox/vim-lua-ftplugin'
" Plugin 'xolox/vim-misc'
" Plugin 'rust-lang/rust.vim'
" Plugin 'cognoscan/vim-vhdl'


" vimwiki config
" let g:vimwiki_list = [{'path': '~/Documentos/vimwiki/',
"                       \ 'syntax': 'markdown', 'ext': 'md'}]
" let g:vimwiki_global_ext = 0

" ale config
let g:ale_set_highlights = 0
highlight SignColumn ctermbg=NONE guibg=NONE

" emmet-vim config
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" airline themes config
let g:airline_theme='simple'

" emmet
let g:user_emmet_leader_key=','

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Put your non-Plugin stuff after this line

syntax on
set path+=**
set wildmenu
set showcmd
" set termguicolors
set mouse=a

inoremap <c-s> <Esc>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-s> <Esc>:Lex<cr>:vertical resize 30<cr>
" colorscheme embark

" Enhanced F2 mapping for C++ competitive programming
nnoremap <F2> :w <bar>
    \ echo "Compiling..." <bar>
    \ if !empty(glob("%")) <bar>
    \   silent !clang++ -std=c++17 -Wall -Wextra -Wshadow -O2 -D_GLIBCXX_DEBUG -fsanitize=address -fsanitize=undefined -o %:r % 2> %:r.err <bar>
    \   if !v:shell_error <bar>
    \     echo "Running..." <bar>
    \     !time ./%:r < %:r.in > %:r.out <bar>
    \     echo "Execution finished" <bar>
    \   else <bar>
    \     echo "Compilation failed" <bar>
    \     cfile %:r.err <bar>
    \     copen <bar>
    \   endif <bar>
    \ else <bar>
    \   echo "No file to compile" <bar>
    \ endif<CR>

nnoremap <F3> :find 
