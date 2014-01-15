"install vim-gtk so we get clipboard support please
set expandtab
set softtabstop=0
set shiftwidth=2
set tabstop=2
set smartindent
syntax on 
set wrap!
set cursorline
set laststatus=2
set ruler
set number
set ignorecase
set smartcase
colorscheme slate
filetype plugin on

"set nocompatible
"filetype on
"filetype plugin on

:let mapleader = ";"
"bufferlist plugin
:map <Leader>b :call BufferList()<CR>
:map <Leader>i :><CR>
:map <Leader>u :<<CR>

"CtrlP - fuzzy file search
:map <Leader>ff :CtrlP<CR>
:map <Leader>fb :CtrlPBuffer<CR>

:map <Leader>e :e .<CR>
":map <Leader># :s/\(\s*\)/\1#/<CR>
:map <Leader>! :s/#//<CR>

"Commenting
:map <Leader># <c-_><c-_>

"tabs
:map <Leader>nt :tabnew<CR>
:map <c-p>   :tabp<CR>
:map <c-n>  :tabn<CR>

"navigating windows
:map <c-l> :wincmd l<CR>
:map <c-h> :wincmd h<CR>
:map <c-k> :wincmd k<CR>
:map <c-j> :wincmd j<CR>

"resize windows
:map <c-right> <c-w>>
:map <c-left> <c-w><
:map <c-down> <c-w>+
:map <c-up> <c-w>-

"NERDTree plugin
:map <Leader>t :NERDTreeToggle<CR>
:map <Leader>tm :NERDTreeMirror<CR>
"put NERDTree on the right side
let g:NERDTreeWinPos = "right"

"CommandT - Fuzzy File Finder
":map <Leader>ff :CommandT<CR>

"ClipBoard paste
:map <Leader>cp :put +<CR>

"CTags
:map <Leader>c :TlistToggle<CR>

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
:map <Leader>err :Error<CR>:wincmd j<CR>
