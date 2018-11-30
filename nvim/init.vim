" plugins

call plug#begin()

Plug 'airblade/vim-gitgutter'
Plug 'Chiel92/vim-autoformat'
Plug 'easymotion/vim-easymotion'
Plug 'farmergreg/vim-lastplace'
Plug 'jiangmiao/auto-pairs'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'ntpeters/vim-better-whitespace'
Plug 'pbrisbin/vim-mkdir'
Plug 'thinca/vim-quickrun'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug '907th/vim-auto-save'

"" fuzzy finder

Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

"" language

Plug 'sheerun/vim-polyglot'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"" color

Plug 'cocopon/iceberg.vim'

call plug#end()

" Reminders
" Comment uses 'gc'

" pure vim

augroup Rc
	autocmd!
augroup END

set autoread
set nobackup
set nolazyredraw
set nowritebackup
set swapfile
set tildeop
set ttyfast
set visualbell
set wildmenu
set wildmode=full
filetype plugin indent off
autocmd Rc BufWinEnter * set mouse=

"" space setting

set autoindent
set list
set shiftround
set shiftwidth=2
set smartindent
set smarttab
set tabstop=2

"" appearance

syntax on
set backspace=indent,eol,start
set colorcolumn=80
set completeopt=menu
set cursorline
set hlsearch
set inccommand=nosplit
set incsearch
set number
set relativenumber
set shortmess=a
set showcmd
set showmatch
set showmode
set splitbelow
set splitright
set wrap
autocmd Rc BufEnter * EnableStripWhitespaceOnSave

"" keymaps

let g:mapleader = ";"

nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
nnoremap gj j
nnoremap gk k
nnoremap <esc><esc> :nohlsearch<cr>
nnoremap Y y$

inoremap jj <Esc>
inoremap ;w <Esc>:w<CR>a
inoremap ;ww <Esc>:w<CR>

" plugin settings

"" deoplete

let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_start_length = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"


"" auto-pairs

let g:AutoPairsMapCh = 0
let g:AutoPairsMapCR = 0


"" fzf

nnoremap <leader>b :Buffers<cr>
nnoremap <leader>c :History:<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>g :GFiles<cr>
nnoremap <leader>H :History<cr>
nnoremap <leader>L :Lines<cr>
nnoremap <leader>m :Maps<cr>
nnoremap <leader>r :Ag<cr>

"" windows

nnoremap <leader>w :w<CR>

"tabs
nnoremap <Leader>nt :tabnew<CR>
nnoremap <Leader>h  :tabp<CR>
nnoremap <Leader>l  :tabn<CR>
nnoremap <Leader>fs :tab split<CR>
nnoremap <Leader>xfs :tabc<CR>
nnoremap <Leader>ts :Windows<CR>

"navigating windows
nnoremap <c-l> :wincmd l<CR>
nnoremap <c-h> :wincmd h<CR>
nnoremap <c-k> :wincmd k<CR>
nnoremap <c-j> :wincmd j<CR>

"resize windows
nnoremap <c-right> :vertical resize +5<CR>
nnoremap <c-left> :vertical resize -5<CR>
nnoremap <c-up> :resize +5<CR>
nnoremap <c-down> :resize -5<CR>

"" Misc

nnoremap <Leader>H :nohl<CR>

" edit/reload .vimrc
nnoremap <Leader>con :vsplit $MYVIMRC<CR>
nnoremap <Leader>vimrc :so $MYVIMRC

"My simple todo system
" test subject below
"☐ test
nnoremap <Leader>done <ESC>0lcw✔<ESC>A /<ESC>"=strftime('%Y-%m-%d %I:%M%p')"<ESC>pA/<ESC>0l
nnoremap <Leader>redo <ESC>0lcw☐<ESC>V<ESC>:s/\s*\/.*\/$//<CR><ESC>0l
nnoremap <Leader>task <ESC>i ☐

"" autoformat

autocmd Rc BufEnter,BufWinEnter,BufRead,BufNewFile *
			\ if &filetype == "" | set filetype=text | endif
autocmd Rc BufWrite * :Autoformat


"" auto-save

" let g:auto_save = 1
" let g:auto_save_in_insert_mode = 0
" let g:auto_save_silent = 1


"" lightline

let g:lightline = { 'colorscheme': 'iceberg' }


"" colorscheme

colorscheme iceberg

highlight Normal      ctermbg=none
highlight NonText     ctermbg=none
highlight EndOfBuffer ctermbg=none
highlight VertSplit   cterm=none ctermfg=240 ctermbg=240
