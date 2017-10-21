set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'
Plugin 'venantius/vim-eastwood'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-fireplace'
Plugin 'vim-scripts/paredit.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'danro/rename.vim'
call vundle#end()            " required
filetype plugin indent on    " required

let g:SimpylFold_docstring_preview=1

" Maps pane navigation in Vim to ctrl+[h,j,k,l] keys 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Maps spacebar to toggle folds
nnoremap <space> za
" Maps F2 to toggle the file tree
map <F2> :NERDTreeToggle<CR>

set encoding=utf-8

" show line numbers
set number

"Sets the <leader> key to ~ key for parediting commands
let g:paredit_leader = '`'

" Enable folding
set foldmethod=indent
set foldlevel=99

" Allows buffers to be hidden without saving
set hidden
" Allows Vim to refresh files automatically if changed(works only in GVIM)
set autoread

let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_python_binary_path='/usr/bin/python3.5'
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Toggles paste mode so I can ctrl+v text into Vim
set pastetoggle=<F3>
" Allows Vim to use system clipboard to allow me to yank and paste elsewhere
set clipboard=unnamedplus

" ordo.py is used to encrypt the file and delete the plaintext file.
" autocommand to automatically run ordo.py for '.ordo' files. 
au BufDelete,BufWipeout,VimLeave *.ordo !python3 /home/subil/Projects/PYTHON/ordovim/ordo.py -e  %
" autocommand to automatically run ordo.py for '.ordo.enc' files and load the
" decrypted file


"colors
set t_Co=256 " 256 colors
syntax on
color xoria256 
