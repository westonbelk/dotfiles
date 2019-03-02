
" =======
" Plugins
" =======
call plug#begin('~/.local/share/nvim/plugged')
Plug 'igankevich/mesonic'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'Valloric/YouCompleteMe', {'do': 'python3 install.py --clang-completer'}
call plug#end()

" ===============================
" Plugin: vim-airline/vim-airline
" ===============================
let g:airline#extensions#tabline#enabled = 1


" ==============================
" Plugin: airblade/vim-gitgutter
" ==============================
set updatetime=100
hi GitGutterAdd    ctermfg=lightgreen
hi GitGutterChange ctermfg=lightmagenta
hi GitGutterDelete ctermfg=red

" =======================
" Generic Editor Settings
" =======================

set number
set mouse=a
