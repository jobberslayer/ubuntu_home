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
"colorscheme slate
"colorscheme desert
"colorscheme molokai
colorscheme xoria256
filetype plugin on

"REMINDER NOTES
"SNIPMATE - type shortcut work then press tab
"SURROUND - select using V or C-v and then hit S and what you want to surround
"           with. cst<tagname> to change tags cs'" to change ' to ", etc. Same
"           with dst for deleting tags and ds' for deleteing ' for example.
"EASYMOTION - ;;w then the letter you want to jump to 
"Zen/Emmet - Ctrl + y and Comma
"BufExplorer - ;be current window, ;bs - hsplit, ;bv - vsplit

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

"set nocompatible
"filetype on
"filetype plugin on

:let mapleader = ";"
"bufferlist plugin
:map <Leader>b :call BufferList()<CR>
:map <Leader>i :><CR>
:map <Leader>ui :<<CR>

"edit/reload .vimrc
:map <Leader>config :tabnew $MYVIMRC<CR>
:map <Leader>vimrc :so $MYVIMRC
:map <Leader>plugin :tabnew ~/.vim<CR>

" paste from system clipboard
:map <Leader>pp "*p<CR>

"GUndo
:map <Leader>u :GundoToggle<CR>

"CtrlP - fuzzy file search
:map <Leader>ff :CtrlP<CR>
:map <Leader>fb :CtrlPBuffer<CR>

"BufExplorer sorting
let g:bufExplorerSortBy='name'

:map <Leader>e :Explore<CR>
":map <Leader># :s/\(\s*\)/\1#/<CR>
:map <Leader>! :s/#//<CR>

"Commenting
:map <Leader># <c-_><c-_>

"reload snippets after a change to one
:map <Leader>resnip :call ReloadAllSnippets()

"tabs
:map <Leader>nt :tabnew<CR>
:map <Leader>h   :tabp<CR>
:map <Leader>l  :tabn<CR>

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

"ClipBoard paste
:map <Leader>cp :put "+<CR>
:map <Leader>paste :set paste
:map <Leader>paste_done :set nopaste

"CTags
:map <Leader>c :TlistToggle<CR>

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
:map <Leader>err :Error<CR>:wincmd j<CR>
