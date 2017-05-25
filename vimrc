" =============================================================================
" -----------------------------------------------------------------------------
"                                   ::Contents::
" -----------------------------------------------------------------------------
" =============================================================================
" 
" ::Contents::
" ::Vundle::
" ::UI & UX::
" ::Key remaps::
" ::Other Functionality::
"
" ==Third Party Plugins==
" ::mattn/emmet-vim::
" ::easymotion/vim-easymotion::
" ::kien/ctrlp.vim::
" ::klen/python-mode::
" ::davidhalter/jedi-vim::
" ::scrooloose/nerdtree::
" ::Xuyuanp/nerdtree-git-plugin::
" ::scrooloose/nerdcommenter::
" ::scrooloose/syntastic::
" ::kshenoy/vim-signature::
" ::spolu/dwm.vim::
" ::Valloric/MatchTagAlways::
" ::tmhedberg/SimpylFold::
" ::powerline/powerline::


" =============================================================================
" -----------------------------------------------------------------------------
"                                   ::Vundle::
" -----------------------------------------------------------------------------
" =============================================================================


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My plugins

Plugin 'tomasr/molokai'
Plugin 'mattn/emmet-vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-vinegar'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'scrooloose/syntastic'
Plugin 'kshenoy/vim-signature'
Plugin 'spolu/dwm.vim'
Plugin 'Valloric/MatchTagAlways'
Plugin 'tmhedberg/SimpylFold'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" =============================================================================
" -----------------------------------------------------------------------------
"                                   ::UI & UX::
" -----------------------------------------------------------------------------
" =============================================================================


set relativenumber " Use relative numbering

" Setup dark cursor
set cursorline
hi CursorLine ctermbg=0 "8 = dark gray, 15 = white
hi Cursor ctermbg=15 ctermfg=8

" Setup text bar
set colorcolumn=80
highlight ColorColumn ctermbg=7

" Setup Number column and background
highlight LineNr ctermfg=7
highlight LineNr ctermbg=235


syntax on "Add basic syntax
set t_Co=256 " Add colored column

" Set colorscheme to molokai
set background=dark
colorscheme molokai
let g:molokai_original = 1

" netrw NerdTree Alternative
let g:netrw_liststyle=3


" =============================================================================
" -----------------------------------------------------------------------------
"                                   ::Key remaps::
" -----------------------------------------------------------------------------
" =============================================================================

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>ft Vatzf
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
inoremap jj <ESC>


let mapleader=',' " Setup Leader key

" Easier splits
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

" Easier Split resizes
map <leader>- <esc>:res -5<cr>
map <leader>= <esc>:res +5<cr>
map <leader>} <esc>:vertical resize -5<cr>
map <leader>{ <esc>:vertical resize +5<cr>

" Easier tab movement
map <leader>tn <esc>:tabnext<cr>
map <leader>tp <esc>:tabprevious<cr>

" Move down one line only
map j gj
map k gk

" Better Indentation
vnoremap < <gv
vnoremap > >gv

" Use python/perl search
nnoremap / /\v
vnoremap / /\v

" Use tab to jump
nnoremap <tab> %
vnoremap <tab> %

" Explorer open easy
map <leader>o :NERDTreeToggle<cr>

" =============================================================================
" -----------------------------------------------------------------------------
"                                ::Other Functionality::
" -----------------------------------------------------------------------------
" =============================================================================

set nowrap " Do not auto wrap text on load
" Fix tabs to spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab

set autoindent " Auto indent
set fileformat=unix " Force Unix filetypes
au FocusLost * :wa " Auto save on focus off
let g:vim_json_syntax_conceal = 0
set conceallevel=0 "Hides json quotes for some godforsaken reason
set cole=0 
au FileType * setl cole=0 

" =============================================================================
" -----------------------------------------------------------------------------
"                                   ::mattn/emmet-vim::
" -----------------------------------------------------------------------------
" =============================================================================

 let g:user_emmet_mode='a'    "enable all function in all mode.
 let g:user_emmet_leader_key='<C-e>' "Actually maps to 


" =============================================================================
" -----------------------------------------------------------------------------
"                                   ::easymotion/vim-easymotion::
" -----------------------------------------------------------------------------
" =============================================================================

let g:EasyMotion_startofline = 0
let g:EasyMotion_smartcase = 1

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
nmap s <Plug>(easymotion-s)

" =============================================================================
" -----------------------------------------------------------------------------
"                                   ::kien/ctrlp.vim::
" -----------------------------------------------------------------------------
" =============================================================================

let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.pyo     " MacOSX/Linux

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|pyc|swp|undo|pyo|zip)$',
  \ }

" =============================================================================
" -----------------------------------------------------------------------------
"                                   ::klen/python-mode::
" -----------------------------------------------------------------------------
" =============================================================================

" K             Show python docs
" " <Ctrl-c>g     Rope goto definition
" " <Ctrl-c>d     Rope show documentation
" " <Ctrl-c>f     Rope find occurrences
" " <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" " [[            Jump on previous class or function (normal, visual, operator modes)
" " ]]            Jump on next class or function (normal, visual, operator  modes)
" " [M            Jump on previous class or method (normal, visual, operator modes)
" " ]M            Jump on next class or method (normal, visual, operator modes)


let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 0

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1
"
" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" =============================================================================
" -----------------------------------------------------------------------------
"                           ::davidhalter/jedi-vim::
" -----------------------------------------------------------------------------
" =============================================================================

" No config


" =============================================================================
" -----------------------------------------------------------------------------
"                           ::scrooloose/nerdcommenter::
" -----------------------------------------------------------------------------
" =============================================================================

" No Config

" =============================================================================
" -----------------------------------------------------------------------------
"                           ::scrooloose/syntastic::
" -----------------------------------------------------------------------------
" =============================================================================

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" =============================================================================
" -----------------------------------------------------------------------------
"                           ::kshenoy/vim-signature::
" -----------------------------------------------------------------------------
" =============================================================================

" mx           Toggle mark 'x' and display it in the leftmost column
" dmx          Remove mark 'x' where x is a-zA-Z
" m,           Place the next available mark
" m.           If no mark on line, place the next available mark. Otherwise, remove (first) existing mark.
" m-           Delete all marks from the current line
" m<Space>     Delete all marks from the current buffer
" ]`           Jump to next mark
" [`           Jump to prev mark
" ]'           Jump to start of next line containing a mark
" ['           Jump to start of prev line containing a mark
" `]           Jump by alphabetical order to next mark
" `[           Jump by alphabetical order to prev mark
" ']           Jump by alphabetical order to start of next line having a mark
" '[           Jump by alphabetical order to start of prev line having a mark
" m/           Open location list and display marks from current buffer
" m[0-9]       Toggle the corresponding marker !@#$%^&*()
" m<S-[0-9]>   Remove all markers of the same type
" ]-           Jump to next line having a marker of the same type
" [-           Jump to prev line having a marker of the same type
" ]=           Jump to next line having a marker of any type
" [=           Jump to prev line having a marker of any type
" m?           Open location list and display markers from current buffer
" m<BS>        Remove all markers

" =============================================================================
" -----------------------------------------------------------------------------
"                           ::spolu/dwm.vim::
" -----------------------------------------------------------------------------
" =============================================================================

" C-N Creates a new window and place it in the master pane [M] & stacks all previous windows in the stacked pane [S]
" C-C Close the current window if no unsaved changes
" C-J Jumps to next window (clockwise)
" C-K Jumps to previous window (anti-clockwise)
" C-Space Focus the current window, that is, place it in the master pane [M] & stacks all other windows in the stacked pane [S]


" =============================================================================
" -----------------------------------------------------------------------------
"                           ::tmhedberg/SimpylFold::
" -----------------------------------------------------------------------------
" =============================================================================

autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<


" =============================================================================
" -----------------------------------------------------------------------------
"                           ::powerline/powerline
" -----------------------------------------------------------------------------
" =============================================================================
set guifont=Anonymouse\ Pro\ for\ Powerline
set laststatus=2
let g:Powerline_symbols = 'unicode'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\

set conceallevel=0 "Hides json quotes for some godforsaken reason
set cole=0 
au FileType * set cole=0 
au FileType * set conceallevel=0 
