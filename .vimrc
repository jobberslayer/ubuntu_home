"vundle config
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'sjl/badwolf'
Plugin 'dracula/vim'
Plugin 'PotatoesMaster/i3-vim-syntax'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'morhetz/gruvbox'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}

" Plugin 'powerline/powerline'

"BadWolf Theme settings
"let g:badwolf_darkgutter = 1



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"install vim-gtk so we get clipboard support please
set expandtab
set softtabstop=0
set shiftwidth=2
set tabstop=2
set smartindent
syntax on 
"set wrap!
set nowrap
set cursorline
set laststatus=2
set ruler
set number
set ignorecase
set smartcase
set mouse="c"
set scrolloff=10
" set encoding=utf8
colorscheme gruvbox
set background=dark
"colorscheme neodark
"colorscheme slate
"colorscheme desert
"colorscheme molokai
"colorscheme xoria256
"colorscheme termschool
colorscheme dracula
filetype plugin on
set textwidth=125
set colorcolumn=+1
"highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

"airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'

" Set open command for nerdtree external opens, aka 'E'
let g:webdevicons_enable_nerdtree = 1
let g:nerdtree_open_cmd = 'gnome-open'
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeGlyphReadOnly = ''

"put filename in status line
set statusline=%f

"REMINDER NOTES
" gv - rehighlight the last visual select
"SNIPMATE - type shortcut work then press tab
"SURROUND - select using V or C-v and then hit S and what you want to surround
"           with. cst<tagname> to change tags cs'" to change ' to ", etc. Same
"           with dst for deleting tags and ds' for deleteing ' for example.
"EASYMOTION - ;;w (or \\w on some machines?) then the letter you want to jump to 
"Zen/Emmet - Ctrl + y and Comma
"BufExplorer - ;be or ;b (set up below) current window, ;bs - hsplit, ;bv - vsplit
"CtrlP - ctrl-p and then F5 to refresh
"Use Ctrl-v then hit a modifier sequence when trying to map one.
"Reindent the whole file. Do in normal mode. gg=G
"
"Maximize current split - ;m
"
"Explore reminders
"% to create a new file

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

"set nocompatible
"filetype on
"filetype plugin on

" alternative to hitting escape key
:imap jj <Esc>

" insert a line above and stay in insert mode
:imap ;o O

" save file while in insert mode and return to insert mode immediately
:imap ;w <ESC>:w<CR>a
" save file while in insert mode and leave in command mode 
:imap ;ww <ESC>:w<CR>

:let mapleader = ";"
:map <Leader>b :BufExplorer<CR>

" event shop formatting
:map <Leader>es ddA:<ESC>JJ
let @e="ddA:JJ"

" delete all buffers
:map <Leader>dab :bd *

" alternative to saving file while in command mode
:map <Leader>w :w<CR>

"edit/reload .vimrc
:map <Leader>config :tabnew $MYVIMRC<CR>
:map <Leader>vimrc :so $MYVIMRC
:map <Leader>plugin :tabnew ~/.vim<CR>

" quickify using 'a' register
:map <Leader>y "ay
:map <Leader>p "ap

" paste from system clipboard
:map <Leader>pp "*p<CR>

"GUndo
:map <Leader>u :GundoToggle<CR>

"CtrlP - fuzzy file search
:map <Leader>ff :CtrlP<CR>
:map <Leader>fb :CtrlPBuffer<CR>

:map <Leader>dbl :g/^$/d<CR>

"BufExplorer sorting
let g:bufExplorerSortBy='name'

:map <Leader>e :Explore<CR>
:map <Leader>csv :s/^/#,/<CR>
:map <Leader>! :s/#//<CR>
:map <Leader>cws :%s/\s\+$//

" Conque Shell
:map <Leader>shell :ConqueTermSplit bash
:map <Leader>shelltab :ConqueTermTab bash

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
:map <c-right> :vertical resize +5<CR>
:map <c-left> :vertical resize -5<CR>
:map <c-up> :resize +5<CR>
:map <c-down> :resize -5<CR>

"NERDTree plugin
:map <Leader>t :NERDTreeToggle<CR>
:map <Leader>tm :NERDTreeMirror<CR>
"put NERDTree on the right side
let g:NERDTreeWinPos = "right"

"ClipBoard paste
:map <Leader>cp :put "+<CR>
:map <Leader>pp :set paste
:map <Leader>np :set nopaste

"My simple todo system
" test subject below
"☐ test
:map <Leader>done <ESC>0lcw✔<ESC>A /<ESC>"=strftime('%Y-%m-%d %I:%M%p')"<ESC>pA/<ESC>0l
:map <Leader>redo <ESC>0lcw☐<ESC>V<ESC>:s/\s*\/.*\/$//<CR><ESC>0l
:map <Leader>task <ESC>i ☐ 

"CTags
:map <Leader>c :TlistToggle<CR>

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%=\ %(%l,%c%V%)\ %P
:map <Leader>err :Error<CR>:wincmd j<CR>

nnoremap <C-W>O :call MaximizeToggle()<CR>
nnoremap <C-W>o :call MaximizeToggle()<CR>
nnoremap <C-W><C-O> :call MaximizeToggle()<CR>

function! MaximizeToggle()
  if exists("s:maximize_session")
    exec "source " . s:maximize_session
    call delete(s:maximize_session)
    unlet s:maximize_session
    let &hidden=s:maximize_hidden_save
    unlet s:maximize_hidden_save
  else
    let s:maximize_hidden_save = &hidden
    let s:maximize_session = tempname()
    set hidden
    exec "mksession! " . s:maximize_session
    only
  endif
endfunction

:map <Leader>m o

"rails.vim
:map <Leader>z :RV<CR>
:map <Leader>r :R<CR>

" Retore cursor position, window position, and last search after running a                                                                                                                                  
" command.                                                                                                                    
fun! Preserve(command)                                                                                                        
  " Save the last search.                                                                                                     
  let search = @/                                                                                                             
                                                                                                                              
  " Save the current cursor position.                                                                                         
  let cursor_position = getpos('.')                                                                                           
                                                                                                                              
  " Save the current window position.                                                                                         
  normal! H                                                                                                                   
  let window_position = getpos('.')                                                                                           
  call setpos('.', cursor_position)                                                                                           
                                                                                                                              
  " Execute the command.                                                                                                      
  execute a:command                                                                                                           
                                                                                                                              
  " Restore the last search.                                                                                                  
  let @/ = search                                                                                                             
                                                                                                                                 
  " Restore the previous window position.                                                                                        
  call setpos('.', window_position)                                                                                              
  normal! zt                                                                                                                     
                                                                                                                                 
  " Restore the previous cursor position.                                                                                        
  call setpos('.', cursor_position)                                                                                              
endfun                                                                                                                           
                                                                                                                                 
fun! StripTrailingWhitespace()                                                                                                   
  if &ft =~ 'ruby\|javascript\|perl'                                                                                             
    %s/\s\+$//e                                                                                                                  
  endif                                                                                                                          
endfun                                                                                                                           
                                                                                                                                 
fun! FixIndentation()                                                                                                            
  if &ft =~ 'ruby\|javascript\|perl'                                                                                             
    call Preserve('normal gg=G')                                                                                                 
  endif                                                                                                                          
endfun                                                                                                                           
                                                                                                                                 
autocmd BufWritePre * call StripTrailingWhitespace()                                                                             
"autocmd BufWritePre * call FixIndentation()

" make sure slim file type gets set
autocmd BufNewFile,BufRead *.slim set ft=slim

