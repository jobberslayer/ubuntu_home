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
set textwidth=125
set colorcolumn=+1
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

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

" delete all buffers
:map <Leader>dab :bd *

" alternative to saving file while in command mode
:map <Leader>w :w<CR>

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
:map <a-right> <c-w>>
:map <a-left> <c-w><
:map <a-down> <c-w>+
:map <a-up> <c-w>-

"NERDTree plugin
:map <Leader>t :NERDTreeToggle<CR>
:map <Leader>tm :NERDTreeMirror<CR>
"put NERDTree on the right side
let g:NERDTreeWinPos = "right"

"ClipBoard paste
:map <Leader>cp :put "+<CR>
:map <Leader>pp :set paste
:map <Leader>np :set nopaste

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
autocmd BufWritePre * call FixIndentation()
