" Adapted from skhaz's vimrc (http://github.com/skhaz/vimfiles)
set nocompatible " Be iMproved

set number
set wrap
set backspace=indent,eol,start
set tabstop=4
set showcmd   " Show incomplete cmds down the bottom
set showmode  " Show current mode down the bottom
set incsearch " Find the next match as we type the search
set hlsearch  " Hilight searches by default
set magic " Set magic on, for regular expressions
set wildmode=list:longest " Make cmdline tab completion similar to bash
set ignorecase
set smartcase
set ruler
set history=1000
set nobackup
set nocursorline
set ff=unix
set encoding=utf-8
set fileencoding=utf-8
set autoread

" Enable syntax highlighting
syntax on

" No sound, no blink on errros
set noerrorbells
set novisualbell

try
  "set term=screen-256color
  set t_Co=256 " Enable 256 colors
  set background=dark
  " colorscheme xoria256
  colorscheme jellybeans
  " set ft=xdefaults
catch
endtry

filetype plugin indent on
"let mapleader=","

" Window navigation
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Tab navigation
map <C-Tab> :tabnext<CR>
map <S-Tab> :tabprevious<CR>

" Highlight whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Automatically removing all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" NERDTree
" Close Vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"noremap <silent><F2> :NERDTreeToggle<CR>
noremap <silent><C-Left> :NERDTreeToggle<CR>

if has('gui_running')
  " gVim settings
  set guioptions-=T     " Remove the toolbar
  set lines=40          " 40 lines of text instead of 24,
endif

" YCM Setup
let g:ycm_confirm_extra_conf = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_list_previous_completion=['<Up>']

" Syntastic
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = '☢'

" Rainbow Parentheses
let g:rainbow_operators = 1
let g:rainbow_active = 1

" Airlines
let g:airline_powerline_fonts = 1
let g:airline_theme = 'jellybeans'
let g:airline#extensions#tabline#enabled = 1
set laststatus=2 " Always display the statusline in all windows

" Auto reload vimrc
autocmd BufWritePost .vimrc source %

set ft=xdefaults
