set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'valloric/youcompleteme'
Plugin 'w0rp/ale'
Plugin 'vimwiki/vimwiki'
Plugin 'mattn/emmet-vim'
Plugin 'myusuf3/numbers.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jiangmiao/auto-pairs'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }

Plugin 'bfrg/vim-cpp-modern'
Plugin 'shmup/vim-sql-syntax'
Plugin 'hdima/python-syntax'
" Plugin 'xolox/vim-lua-ftplugin'
Plugin 'xolox/vim-misc'
" Plugin 'rust-lang/rust.vim'


" vimwiki config
let g:vimwiki_list = [{'path': '~/Documentos/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': 'md'}]
" let g:vimwiki_global_ext = 0

" ale config
let g:ale_set_highlights = 0
highlight SignColumn ctermbg=NONE guibg=NONE

" emmet-vim config
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" airline themes config
let g:airline_theme='moonfly'

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
set mouse=a

inoremap <c-s> <Esc>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-s> <Esc>:Lex<cr>:vertical resize 30<cr>
colorscheme moonfly

autocmd filetype cpp nnoremap <F2> :w <bar> !g++ -std=c++17 -O2 -Wall % -o %:r && ./%:r <CR>
autocmd filetype c nnoremap <F4> :w <bar> !clang -lm -O2 -Wall -Wextra % -o %:r && ./%:r <CR>
autocmd filetype cpp nnoremap <F5> i#include <bits/stdc++.h><CR>#define f(i,a,b) for(int i = (a); i < (b); ++i)<CR>#define rf(i,a,b) for(int i = (a); i >= (b); --i)<CR>#define all(x) x.begin(), x.end()<CR>#define ll long long<CR>#define vi vector<int><CR>#define vs vector<string><CR>#define pb push_back<CR>#define yes() cout << "YES\n"<CR>#define no() cout << "NO\n"<CR><CR>using namespace std;<CR><CR>void solve()<CR>{<CR><CR>}<CR><CR>int main()<CR>{<CR><Tab>ios_base::sync_with_stdio(false);<CR><Tab>cin.tie(NULL);<CR><CR><Tab>int T;<CR><Tab>cin >> T;<CR><Tab><CR><Tab>while (T--)<CR><Tab>{<CR><Tab><Tab>solve();<CR><Tab>}<CR>}<Esc>
nnoremap <F3> :find 
