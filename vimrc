set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/Vundle.git'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'matchit.zip'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'octol/vim-cpp-enhanced-highlight'

call vundle#end()
filetype plugin indent on

" airline configs
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" ctrlp config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" vim behavior
syntax on             " Enable syntax highlighting
syntax enable             " Enable syntax highlighting

" syntax highlighting for javascript
let g:used_javascript_libs = 'underscore,angularjs,jquery'

" solarized config
set background=dark
colorscheme solarized


" do nothing when these keys are pressed
nnoremap <F1> <nop>
nnoremap Q <nop>
nnoremap K <nop>

let mapleader = ","
map <C-n> :NERDTreeToggle<CR>

"strip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <F5> :buffers<CR>:buffer<Space>

" reselect the text that was just pasted
nnoremap <leader>v V`]

" escape quicker
inoremap jj <ESC>

set nowrap
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
set colorcolumn=100

" set markers for coding length
set textwidth=100
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set encoding=utf-8
set scrolloff=5
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set undofile
set modelines=0

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction
autocmd BufWritePre     *.rb :call TrimWhiteSpace()
autocmd BufWritePre     *.erb :call TrimWhiteSpace()
autocmd BufWritePre     *.js :call TrimWhiteSpace()

set nu

set exrc
set secure

set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

""" project specific settings:
" set tabstop=4
" set softtabstop=4
" set shiftwidth=4
