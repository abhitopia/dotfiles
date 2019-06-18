set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'   " Adds surround functionality using cs, ds to delete
Plug 'tpope/vim-repeat'  " support repeat for many plugins operations
Plug 'scrooloose/nerdtree' " File browser using cntrl + n

Plug 'majutsushi/tagbar'  " show tags in a bar (functions etc) for easy browsing

Plug 'vim-airline/vim-airline'  " make statusline awesome
Plug 'vim-airline/vim-airline-themes'  " themes for statusline 

Plug 'jonathanfilip/vim-lucius'  " nice white colortheme

" Also Allows to quickly search files, and lines within a buffer
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  "to highlight files in nerdtree
" Not using this in favour of fzf Files command
" Plug 'kien/ctrlp.vim'  " fuzzy search files
Plug 'tweekmonster/impsort.vim'  " color and sort imports
"
" Plug 'w0rp/ale' " , { 'on': ['ALEEnable', 'ALEToggle'] } python linters
Plug 'airblade/vim-gitgutter'  " show git changes to files in gutter
Plug 'tpope/vim-commentary'  "comment-out by gc
Plug 'tmhedberg/SimpylFold' " Python folding


Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
Plug 'kassio/neoterm'
" Plug 'SkyLeach/pudb.vim'


"Hello world!"

" Markdown related
" Plug 'godlygeek/tabular'
" Plug 'plasticboy/vim-markdown'
" ...

" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required

" path to your python 
let g:python3_host_prog = '~/.pyenv/versions/3.7.0/bin/python'
" let g:python_host_prog = '/usr/bin/python2'

" Automatic reloading of the init.vim
autocmd! bufwritepost init.vim source %

syntax on

set bs=2            " make behave like normal

set tabstop=4       " Number of spaces that a <Tab> in the file counts for.
 
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.
 
set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.
 
 
set showcmd         " Show (partial) command in status line.

set number          " Show line numbers.

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.
 
set hlsearch        " When there is a previous search pattern, highlight all
                    " its matches.
 
set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.
 
set ignorecase      " Ignore case in search patterns.
 
set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.
 
set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.
 
  
set formatoptions=c,q,r,t " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode. 
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)
 
set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.
 
set background=dark " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.
 
set mouse=a         " Enable the use of the mouse.

set smartcase  " better case-sensitivity when searching
set wrapscan  " begin search from top of file when nothing is found anymore

set shiftwidth=4
set fillchars+=vert:\  " remove chars from seperators
set softtabstop=4

set history=1000  " remember more commands and search history

set nobackup  " no backup or swap file, live dangerously
set noswapfile  " swap files give annoying warning

set breakindent  " preserve horizontal whitespace when wrapping
set showbreak=..
set lbr  " wrap words
set tw=79   " width of the document


set colorcolumn=80
highlight ColorColumn ctermbg=233

set nowrap  " i turn on wrap manually when needed
set fo-=t   " don't automatically wrap text when typing

" easier formating of the paragraphs, for instance write doc string beyong 80
" chars and then press Q anywhere within a paragraph 
vmap Q gq
vmap Q gqap

set scrolloff=3 " keep three lines between the cursor and the edge of the screen

set undodir=~/.vim/undodir
set undofile  " save undos
set undolevels=10000  " maximum number of changes that can be undone
set undoreload=100000  " maximum number lines to save for undo on a buffer reload

set noshowmode  " keep command line clean
set noshowcmd


set splitright  " i prefer splitting right and below
set splitbelow

set incsearch
set cpoptions+=x  " stay at seach item when <esc>

set noerrorbells  " remove bells (i think this is default in neovim)
set visualbell
set t_vb=
set relativenumber
set viminfo='20,<1000  " allow copying of more than 50 lines to other applications

set pumheight=5 " Number of items in popup menu 
filetype plugin indent on

" This line is import to display powerline status. Without it you don't see a
" thing
set laststatus=2


set diffopt+=vertical

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" tabs:
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

" Think this is to change the default behaviour of the pop-up Support
" navigations

" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
""  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <silent> <expr> <CR> (pumvisible() && empty(v:completed_item)) ?  "\<c-y>\<cr>" : "\<CR>"


" airline settings
let g:airline_powerline_fonts = 1
let g:airline_section_y = ""
let g:airline#extensions#tabline#enabled = 1
 
" Airline settings
" do not show error/warning section
let g:airline_section_error = ""
let g:airline_section_warning = ""
" Set this to enable ALE integration. Airline will handle the rest.
" let g:airline#extensions#ale#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" theicfire .vimrc tips
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = "," " Leader is the space key
let g:mapleader = ","
let maplocalleader = "`"
let g:maplocalleader = "`"
nnoremap , <Nop>

"auto indent for brackets
" nmap <leader>w :w!<cr>
" nmap <leader>q :lcl<cr>:q<cr>
" nnoremap <leader>h :nohlsearch<Bar>:echo<CR> "removes the highlighting
nnoremap <leader>h :noh<CR>

" sort lines alphabetically
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
vnoremap < <gv  " better indentation of code blocks
vnoremap > >gv  " better indentation of code blocks

" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" colorscheme options
let g:lucius_style="dark"
let g:lucius_contrast="high"
colo lucius
set background=light

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

" Python folding
" mkdir -p ~/.config/nvim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
set nofoldenable


" easy breakpoint python
au FileType python map <silent> <leader>b ofrom pudb import set_trace; set_trace()<esc>
au FileType python map <silent> <leader>B Ofrom pudb import set_trace; set_trace()<esc>
au FileType python map <silent> <leader>j ofrom pdb import set_trace; set_trace()<esc>
au FileType python map <silent> <leader>J Ofrom pdb import set_trace; set_trace()<esc>

" " LanguageClient-neovim options

" " Required for operations modifying multiple buffers like rename.
" set hidden

" let g:LanguageClient_serverCommands = {
"     \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
"     \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
"     \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
"     \ 'python': ['/Users/abhishekaggarwal/.pyenv/shims/pyls'],
"     \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
"     \ }

" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" " Or map each action separately
" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" mapping to make movements operate on 1 screen line in wrap mode
function! ScreenMovement(movement)
   if &wrap
      return "g" . a:movement
   else
      return a:movement
   endif
endfunction

onoremap <silent> <expr> j ScreenMovement("j")
onoremap <silent> <expr> k ScreenMovement("k")
onoremap <silent> <expr> 0 ScreenMovement("0")
onoremap <silent> <expr> ^ ScreenMovement("^")
onoremap <silent> <expr> $ ScreenMovement("$")
nnoremap <silent> <expr> j ScreenMovement("j")
nnoremap <silent> <expr> k ScreenMovement("k")
nnoremap <silent> <expr> 0 ScreenMovement("0")
nnoremap <silent> <expr> ^ ScreenMovement("^")
nnoremap <silent> <expr> $ ScreenMovement("$")


" highlight python and self function
autocmd BufEnter * syntax match Type /\v\.[a-zA-Z0-9_]+\ze(\[|\s|$|,|\]|\)|\.|:)/hs=s+1
autocmd BufEnter * syntax match pythonFunction /\v[[:alnum:]_]+\ze(\s?\()/
hi def link pythonFunction Function
autocmd BufEnter * syn match Self "\(\W\|^\)\@<=self\(\.\)\@="
highlight self ctermfg=239


" Impsort option
hi pythonImportedObject ctermfg=127
hi pythonImportedFuncDef ctermfg=127
hi pythonImportedClassDef ctermfg=127

" Remove all trailing whitespace by pressing C-S
nnoremap <C-S> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

" move between defs python:
" NOTE: this break shortcuts with []
nnoremap [[ [m
nnoremap ]] ]m

nnoremap <silent><nowait> [ [[
nnoremap <silent><nowait> ] ]]

" function! MakeBracketMaps()
"     nnoremap <silent><nowait><buffer> [ :<c-u>exe 'normal '.v:count.'[m'<cr>
"     nnoremap <silent><nowait><buffer> ] :<c-u>exe 'normal '.v:count.']m'<cr>
" endfunction

" augroup bracketmaps
"     autocmd!
"     autocmd FileType python call MakeBracketMaps()
" augroup END

" neovim options
" au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" The commands below will automatically enter insert mode when in terminal
"  and leave when moved out
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert
set shell=zsh


nnoremap <C-a> <Esc>
nnoremap <C-x> <Esc>

" vimgutter options
" ]\[-h to navigate changed hunks
" let g:gitgutter_async=0
let g:gitgutter_terminal_reports_focus=0

nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

" <leader>hs to stage and <leader>hu to unstage
nmap <Leader>hs <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterUndoHunk


" let g:gitgutter_override_sign_column_highlight = 0
" let g:gitgutter_map_keys = 0

" Make code look pretty with syntance highlighting on
" let python_highlight_all=1
" syntax on

" Ignore .pyc files to be shown on nerdtree
 let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" uses system clipboard for copy and paste
set clipboard=unnamedplus

" Shortcut for NerdTree
map <C-n> :NERDTreeToggle<CR>

" vim-markdown settings
" set conceallevel=2
" let g:vim_markdown_toc_autofit = 1
" let g:vim_markdown_math = 1
" let g:vim_markdown_frontmatter = 1
" " let g:vim_markdown_toml_frontmatter = 1
" let g:vim_markdown_follow_anchor = 1
" let g:vim_markdown_strikethrough = 1

" Simply fold setting
let g:SimpylFold_docstring_preview = 1
nnoremap <space>f za " Pressing f will toggle folding under the cursor
" nnoremap <leader>f :call feedkeys("za")<CR> " Pressing f will toggle folding under the cursor


" Below is a nifty toggle which allows you to toggle between all fold and all
" unfold using shift+F
nnoremap <leader>f :call FoldToggle()<CR>

let g:all_fold_pressed = 0
function! FoldToggle()
    if g:all_fold_pressed 
        call feedkeys("zM")
        let g:all_fold_pressed = 0
    else
        call feedkeys("zR")
        let g:all_fold_pressed = 1
    endif
endfunction

" TagBar shortcut
map <C-t> :set nosplitright<CR>:TagbarToggle<CR>:set splitright<CR>

" fzf keymappings
nnoremap <C-p> :Files<CR>
nmap <Space>b :Buffer<CR>



" Coc settings

set completeopt=menu,preview,menuone,noinsert

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
" set shortmess+=c

" always show signcolumns
set signcolumn=auto:2

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" NeoTerm set up
filetype off
let &runtimepath.=',~/.vim/bundle/neoterm'
filetype plugin on

let g:neoterm_default_mod='belowright'
let g:neoterm_repl_python='ipython'
let g:neoterm_autoscroll = '1'

" Line below lets you switch to buffer using sbuffer, without overrighting
" so jumps to an open pain containing that buffer
set switchbuf+=useopen

" And now we use this to switch to terminal
nnoremap § :Ttoggle<CR>:sbuffer zsh<CR>
inoremap § <esc>:Ttoggle<CR><esc>:sbuffer zsh<CR>
tnoremap § <C-\><C-n>:Ttoggle<CR>
" tnoremap <esc> <C-\><C-n>

