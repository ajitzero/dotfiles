set nu rnu
set cursorline
highlight CursorLine ctermfg=White ctermbg=Darkgray guifg=white guibg=darkgray
set pastetoggle=<F2>
nnoremap <silent> <Esc><Esc> :noh<CR> :call clearmatches()<CR>
set backspace=indent,eol,start

call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
Plug 'junegunn/vim-easy-align'
Plug 'wsdjeg/vim-fetch'

" Initialize plugin system
call plug#end()

" :PlugInstall
" To install the first time

