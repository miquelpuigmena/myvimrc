" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    " REQUIRED let Vundle manage Vundle
    Plugin 'VundleVim/Vundle.vim'

    " nerdtree for left side file search
    Plugin 'preservim/nerdtree'

    " coc for autocompletion
    Plugin 'neoclide/coc.nvim'

    " ctrlp for file search by name
    Plugin 'kien/ctrlp.vim'

    " vim-airline for a fancy status bar
    Plugin 'vim-airline/vim-airline'

    " gruvbox for styling	
    Plugin 'morhetz/gruvbox'

    " ultisnips for snippet handling
    Plugin 'SirVer/ultisnips'
call vundle#end()

" Customize plugins
" NERDTree
" Fix NERDTree writing ^G before each file/folder name
let g:NERDTreeNodeDelimiter = "\u00a0"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp$']
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Airline
" Initialise dictionary of symbols if non existent
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
" Don't show encoding section (section y)
let g:airline_section_y = '' 
" Customize section z. Example :1/100, Col:99
let g:airline_section_z = ":%l/%L, Col:%c"
" Tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
" Just show the filename (no path) in the tab
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='gruvbox'

" coc
source ~/.vim/helpers/coc.vim

" utilsnips
" Key to trigger expansion
let g:UltiSnipsExpandTrigger="<tab>"
" Jump to next position to write
let g:UltiSnipsJumpForwardTrigger="<tab>"
" Jump to previous position to write
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
" Point to custom directory
let g:UltiSnipsSnippetsDir="~/.vim/mysnippets"
let g:UltiSnipsSnippetDirectories=['mysnippets']
