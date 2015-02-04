set nocompatible              " be iMproved, required
filetype off                  " required

let g:ycm_confirm_extra_conf = 1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'   " syntax highlight
Plugin 'a.vim'			        " Toggle c->h
Plugin 'ctrlp.vim'		        " Quick file/path find
Plugin 'xoria256.vim'		    " Theme
Plugin 'nanotech/jellybeans.vim' " Theme
Plugin 'morhetz/gruvbox'	    " Theme
Plugin 'luochen1990/rainbow'	" Colored matching parentheses
Plugin 'bling/vim-airline'	    " Custom status line
Plugin 'octol/vim-cpp-enhanced-highlight' " Custom C++ highlight
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Valloric/YouCompleteMe' " Clang Parser
Plugin 'tpope/vim-fugitive'	    " Git
Plugin 'vim-scripts/Conque-GDB' " GDB
Plugin 'matrix.vim'		        " Screensaver
Plugin 'rust-lang/rust.vim'     " Rust

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
