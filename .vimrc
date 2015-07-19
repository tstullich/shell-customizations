set background=dark

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Bundle 'gmarik/vundle'
Bundle 'plasticboy/vim-markdown'
Plugin 'Chiel92/vim-autoformat'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'mileszs/ack.vim'
Plugin 'ervandew/supertab'
Plugin 'octol/vim-cpp-enhanced-highlight'
call vundle#end()

" General configurations for vim
autocmd FileType make setlocal noexpandtab
set expandtab
set tabstop=4
set shiftwidth=4
set number
set showmatch
set matchtime=4
set encoding=utf8
syntax on
set background=dark
set backspace=indent,eol,start
colorscheme solarized

" Tabs for make utility
autocmd FileType make setlocal noexpandtab

" Always show statusline
set laststatus=2

" Use 256 colours 
set t_Co=256

" More Powerline configuration stff
let g:airline_powerline_fonts = 1

" Options for Plasticboy Markdown plugin
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_initial_foldlevel = 1
let g:airline#extensions#tabline#enabled = 1

" Options for Syntastic
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++14'
let g:syntastic_cpp_check_header = 1
filetype plugin indent on

" Vala Configurations
let vala_comment_strings = 1
let g:syntastic_vala_modules = ['gtk+-3.0']
autocmd FileType vala setlocal shiftwidth=4 tabstop=4
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" Options for more C++ highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_hight = 1

" Switch to alternate file
map <Tab> :bnext<cr>
map <S-Tab> :bprevious<cr>
