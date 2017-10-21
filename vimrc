set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/dotfiles/vim/bundle/vundle
 call vundle#begin()

Plugin 'gmarik/vundle.git'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'venantius/vim-eastwood'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-fireplace'
Plugin 'vim-scripts/paredit.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'danro/rename.vim'
Plugin 'vim-scripts/CSApprox'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'Raimondi/delimitMate'
Plugin 'majutsushi/tagbar'
Plugin 'Yggdroot/indentLine'
Plugin 'avelino/vim-bootstrap-updater'
Plugin 'sheerun/vim-polyglot'

Plugin 'Shougo/vimshell.vim'
Plugin 'severin-lemaignan/vim-minimap'

" Plugin 'vim-scripts/Conque-Shell'
Plugin 'lrvick/Conque-Shell'

Plugin 'dracula/vim'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"*****************************************************************************
"" Language Support
"*****************************************************************************

" c
Plugin 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
Plugin 'ludwig/split-manpage.vim'


" haskell
Plugin 'eagletmt/neco-ghc'
Plugin 'dag/vim2hs'
Plugin 'pbrisbin/vim-syntax-shakespeare'


" html
Plugin 'hail2u/vim-css3-syntax'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'tpope/vim-haml'
Plugin 'mattn/emmet-vim'


" javascript
Plugin 'jelera/vim-javascript-syntax'


" php
Plugin 'arnaud-lb/vim-php-namespace'


" python
Plugin 'davidhalter/jedi-vim'
Plugin 'raimon49/requirements.txt.vim', {'for': 'requirements'}

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

"colors
set t_Co=256 " 256 colors
syntax on
" color xoria256
color dracula
let g:colors_name = 'dracula'

" 80 character line
:set colorcolumn=80

" vim-airline
let g:airline#extensions#virtualenv#enabled = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif

" Enable Minimap
autocmd VimEnter * Minimap

" Nerdtree
let NERDTreeQuitOnOpen=1
