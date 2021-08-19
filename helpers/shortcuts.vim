" Define shortcuts in this file
" Resizing screens
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
  map > <C-W>>
  map < <C-W><
endif 

" Close brackets automatically when insert mode
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Quitting
nnoremap <leader>qq :q<CR>
nnoremap <leader>qs :wq<CR>
nnoremap <leader>qf :q!<CR>

" NERDTree
nnoremap <leader>nn :NERDTreeToggle<CR> " Toggle NERDTree menu visibility
nnoremap <leader>nf :NERDTreeFocus<CR> " Open nerd tree

" Tab navigation
nnoremap <leader>tt :tab term<CR> " Open new terminal in new tab
nnoremap <leader>tn :tabnext<CR> " Navigate next tab
nnoremap <leader>tp :tabprevious<CR> " Navigate previous tab
