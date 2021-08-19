" Customize vim visual style
" Show numbers for active window & condition met
function! SetNumberConditionally()
    if &ft == 'nerdtree'
        return
    endif	
    " File is not 'nerdtree'
    set number
endfunction
autocmd WinEnter,BufReadPre,FileReadPre * call SetNumberConditionally()
autocmd WinLeave * set nonumber

" Locate cursor
set cursorline
set cursorcolumn

" Bold when Insert Mode
autocmd InsertEnter * highlight CursorLine term=bold cterm=bold
" Revert bold when leaving Insert Mode
autocmd InsertLeave * highlight CursorLine term=None cterm=None

" gruvbox as Colorscheme
colorscheme gruvbox
set bg=dark

" Highlight cursorcolumn at textwidth
set colorcolumn=-0                                                             
