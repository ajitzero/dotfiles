highlight CursorLine cterm=NONE ctermbg=darkgray ctermfg=NONE
highlight lineNr     cterm=NONE
nnoremap <F3> :set nu! rnu! list!<CR>
nnoremap <silent> <Esc><Esc> :noh<CR> :call clearmatches()<CR>
set backspace=indent,eol,start
set cursorline
" set lcs+=space:·
set listchars=tab:↳\ ,trail:·,extends:>,precedes:<,nbsp:·
set nu rnu list
set pastetoggle=<F2>

call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
Plug 'junegunn/vim-easy-align'
Plug 'wsdjeg/vim-fetch'

" Initialize plugin system
call plug#end()

" :PlugInstall
" To install the first time

