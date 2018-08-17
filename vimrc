set nocompatible              " required
filetype off                  " required

set encoding=utf-8

" show line numbers
set number

"Sets the <leader> key to ~ key for parediting commands
let g:paredit_leader = '`'


" Allows buffers to be hidden without saving
set hidden
" Allows Vim to refresh files automatically if changed(works only in GVIM)
set autoread

" Toggles paste mode so I can ctrl+v text into Vim
set pastetoggle=<F3>
" Allows Vim to use system clipboard to allow me to yank and paste elsewhere
set clipboard=unnamedplus

"colors
set t_Co=256 " 256 colors
syntax on
color xoria256 
