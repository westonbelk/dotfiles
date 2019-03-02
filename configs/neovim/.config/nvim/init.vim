
" =======
" Plugins
" =======
call plug#begin('~/.local/share/nvim/plugged')
Plug 'igankevich/mesonic'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'Valloric/YouCompleteMe', {'do': 'python3 install.py --clang-completer'}
Plug 'tpope/vim-sleuth'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
call plug#end()

" ===============================
" Plugin: vim-airline/vim-airline
" ===============================
let g:airline#extensions#tabline#enabled = 1

" ==============================
" Plugin: Valloric/YouCompleteMe
" ==============================
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/.ycm_extra_conf.py'

" ==============================
" Plugin: airblade/vim-gitgutter
" ==============================
set updatetime=100
hi GitGutterAdd    ctermfg=lightgreen
hi GitGutterChange ctermfg=lightmagenta
hi GitGutterDelete ctermfg=red


" ==================
" Plugin: vim-pandoc
" ==================
let g:pandoc#modules#disabled = ["folding"]

" =======================
" Generic Editor Settings
" =======================

set number
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
