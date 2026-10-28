set nocompatible              " be iMproved, required

call plug#begin('~/.vim/plugged')

" Plug 'valloric/youcompleteme'
Plug 'ervandew/supertab'
Plug 'w0rp/ale'
Plug 'vimwiki/vimwiki'
Plug 'mattn/emmet-vim'
Plug 'myusuf3/numbers.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }

Plug 'bfrg/vim-cpp-modern'
Plug 'shmup/vim-sql-syntax'
Plug 'hdima/python-syntax'
" Plug 'xolox/vim-lua-ftplugin'
Plug 'xolox/vim-misc'
" Plug 'lervag/vimtex', { 'tag': 'v2.17' }
" Plug 'rust-lang/rust.vim'

call plug#end()
" plug#end() already enables filetype plugin indent and syntax on

" Brief help
" :PlugInstall  - installs plugins
" :PlugUpdate   - updates plugins
" :PlugClean    - removes plugins no longer listed
" :PlugStatus   - shows plugin status

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


syntax on
set path+=**
set wildmenu
set showcmd
set mouse=a

inoremap <c-s> <Esc>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-s> <Esc>:Lex<cr>:vertical resize 30<cr>
colorscheme moonfly

packadd comment

autocmd filetype cpp nnoremap <F2> :w <bar> !g++ -std=c++17 -O2 % -o %:r && ./%:r <CR>
autocmd filetype c nnoremap <F4> :w <bar> !clang -lm -O2 -Wall -Wextra % -o %:r && ./%:r <CR>
autocmd filetype cpp nnoremap <F5> :set paste<CR>i#include <bits/stdc++.h><CR>#define f(i,a,b) for(int i = (a); i < (b); ++i)<CR>#define rf(i,a,b) for(int i = (a); i >= (b); --i)<CR>#define all(x) x.begin(), x.end()<CR>#define ll long long<CR>#define vi vector<int><CR>#define vs vector<string><CR>#define pb push_back<CR>#define yes() cout << "YES\n"<CR>#define no() cout << "NO\n"<CR><CR>using namespace std;<CR><CR>void solve()<CR>{<CR><CR>}<CR><CR>int main()<CR>{<CR><Tab>ios_base::sync_with_stdio(false);<CR><Tab>cin.tie(NULL);<CR><CR><Tab>int T;<CR><Tab>cin >> T;<CR><Tab><CR><Tab>while (T--)<CR><Tab>{<CR><Tab><Tab>solve();<CR><Tab>}<CR>}<Esc>:set nopaste<CR>/void solve()<CR>jj0i<Tab>
nnoremap <F3> :find 
