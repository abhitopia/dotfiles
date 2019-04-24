set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" Enable smart folding
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99


" Enable LineNo
set nu

" Enable folding with the spacebar
nnoremap <space> za

" Proper PEP8 Python Indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

" For full stack development
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2


" Flag Unnecessary WhiteSpaces
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" UTF-8 Support
set encoding=utf-8


" YouCompleteMe config
let g:ycm_autoclose_preview_window_after_completion=1 " Ensures the autocomplete goes away when you're done with it
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR> " shortcut for goto definition


" python with virtualenv support

py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  # activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  # exec(activate_this, dict(__file__=activate_this))
  sys.path.insert(0, project_base_dir)
EOF

" Make code look pretty with syntance highlighting on
let python_highlight_all=1
syntax on

" Ignore .pyc files to be shown on nerdtree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" uses system clipboard for copy and paste
set clipboard=unnamedplus

" This requires xclip to be installed on both local and server.
" Further enable `X11Forwarding yes` in /etc/ssg/sshd_config
vmap "+y :!xclip -f -sel clip
map "+p :r!xclip -o -sel clip

