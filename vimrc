" REQUIREDs
set nocompatible                
filetype off                    
filetype plugin indent on       

" DEFAULTs
" Encoding
set encoding=utf-8
" Activate backspace
set backspace=indent,eol,start
" Indent as 4 spaces by default 
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab 
" Textwidth
set textwidth=80
" Activate syntaxe highlighting
syntax on

" Set variables
" Leader
map <Space> <Leader>

" Add plugins
source ~/.vim/helpers/plugins.vim

" Add shortcuts
source ~/.vim/helpers/shortcuts.vim

" Add style
source ~/.vim/helpers/style.vim
