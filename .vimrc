"REMINDER NOTES
" multiple cursors - select and hit c-n
"                    c-x to skip a match
"                    c-p previous
" highlight text and hit * to search forward or # to serach back, then use n
" clear highlight ;a
" gv - rehighlight the last visual select
"SNIPMATE - type shortcut work then press tab
"SURROUND - select using V or C-v and then hit S and what you want to surround
"           with. cst<tagname> to change tags cs'" to change ' to ", etc. Same
"           with dst for deleting tags and ds' for deleteing ' for example.
"EASYMOTION - ;;w then the letter you want to jump to
"             ;;f then search letter then letter to jump, much cleaner
"Zen/Emmet - Ctrl + y and Comma
"BufExplorer - ;be or ;b (set up below) current window, ;bs - hsplit, ;bv - vsplit
"Commentary - comment out using gcc
"Folding
" zM - fold everything
" zm - fold next level
" zR - unfold everything
" zr - unfold next level
"Use Ctrl-v then hit a modifier sequence when trying to map one.
" clean up whitespace :StripWhitespace
"
" EasyAlign
" ;ea align stuff with =
" :EasyAlign /->/ for a perl hash for example
"
"Maximize current split - ;m
"
"Explore reminders
"% to create a new file
" Command	List for FZF
" Files [PATH]	Files (similar to :FZF)
" GFiles [OPTS]	Git files (git ls-files)
" GFiles?	Git files (git status)
" Buffers	Open buffers
" Colors	Color schemes
" Ag [PATTERN]	ag search result (ALT-A to select all, ALT-D to deselect all)
" Rg [PATTERN]	rg search result (ALT-A to select all, ALT-D to deselect all)
" Lines [QUERY]	Lines in loaded buffers
" BLines [QUERY]	Lines in the current buffer
" Tags [QUERY]	Tags in the project (ctags -R)
" BTags [QUERY]	Tags in the current buffer
" Marks	Marks
" Windows	Windows
" Locate PATTERN	locate command output
" History	v:oldfiles and open buffers
" History:	Command history
" History/	Search history
" Snippets	Snippets (UltiSnips)
" Commits	Git commits (requires fugitive.vim)
" BCommits	Git commits for the current buffer
" Commands	Commands
" Maps	Normal mode mappings
" Helptags	Help tags 1
" Filetypes	File types

"vundle config
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" Setting up fzf - Fuzzy Find installed from git clone
"set rtp+=~/.fzf/plugin

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
Plugin 'slim-template/vim-slim'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'powerline/powerline'
Plugin 'vim-syntastic/syntastic'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-commentary'
Plugin 'sjl/gundo.vim'
Plugin 'szw/vim-maximizer'
Plugin 'tpope/vim-rails'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'ChesleyTan/wordCount.vim'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'junegunn/vim-easy-align'
Plugin 'machakann/vim-highlightedyank'
Plugin 'markonm/traces.vim'
Plugin 'taglist.vim'

"Deoplete
Plugin 'Shougo/deoplete.nvim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
let g:deoplete#enable_at_startup = 1
"/Deoplete

" Plugin 'powerline/powerline

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

:let mapleader = ";"

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
set relativenumber
set ignorecase
set smartcase
set mouse="c"
set scrolloff=10
set encoding=utf8

" important so don't get grayish background, but black
au ColorScheme * hi Normal ctermbg=None
"colorscheme gruvbox
"set background=dark
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

set fillchars=vert:┃
set fillchars+=fold:―

set statusline=
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%=\ %(%l,%c%V%)\ %P

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" search highlighting
set nohlsearch
hi Search cterm=NONE ctermfg=black ctermbg=yellow
:map <Leader>a :noh<CR><esc>

" CursorLine
hi CursorLine cterm=None ctermbg=Black

" override scheme and set comment color
hi Comment ctermfg=DarkGrey

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
"set statusline=%f

" split command creates split below current buffer
set splitbelow

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" better whitespace plugin
highlight ExtraWhitespace ctermbg=red

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

" replace all after using * search
:map <Leader>rep :%s/

" delete all buffers
:map <Leader>dab :bd *
" use fzf Buffers command
:map <Leader>b :Buffers<CR>

" alternative to saving file while in command mode
:map <Leader>w :w<CR>

" select paragraph how i want it to work
:map <Leader>hi V}kk

" don't like hitting these combos
:map <Leader>hw viw
:map <Leader>hq vi"
:map <Leader>ht vi'
:map <Leader>hb vi[
:map <Leader>ha vi(
:map <Leader>dq di"
:map <Leader>dt di'
:map <Leader>db di[
:map <Leader>da di(
:map <Leader>sb S]
:map <Leader>sa S)
:map <Leader>sq S"
:map <Leader>st S'

"Support motions for surround I like
" hit space when your choice is selected
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
:imap ;; <esc>mpgi
:imap ;q <esc>v`plS"<c-o>a
:imap ;t <esc>v`plS'<c-o>a
:imap ;b <esc>v`plS]<c-o>a
:imap ;p <esc>v`plS)<c-o>a

" Fix indentation
:map <Leader>ind gg=G

"edit/reload .vimrc
:map <Leader>con :vsplit $MYVIMRC<CR>
:map <Leader>vim :so $MYVIMRC
:map <Leader>snips :vsplit ~/.vim/snippets<CR>

" quickify using 'a' register
:map <Leader>y "ay
:map <Leader>p "ap

" paste from system clipboard
:map <Leader>pp "*p<CR>

"terminal
:map <Leader>x :bo split<CR>:terminal ++curwin /bin/bash --login<CR>

"GUndo
if has('python3')
  let g:gundo_prefer_python3 = 1
endif
:map <Leader>u :GundoToggle<CR>

"Fuzzy Find - fzf
:map <Leader>f :FZF<CR>

:map <Leader>dbl :g/^$/d<CR>

:map <Leader>e :Explore<CR>
:map <Leader>csv :s/^/#,/<CR>
:map <Leader>cws :%s/\s\+$//

" Easy Align on =
:map <Leader>ea :EasyAlign =<CR>
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"Commenting
:map <Leader># gcc

"tabs
:map <Leader>nt :tabnew<CR>
:map <Leader>h   :tabp<CR>
:map <Leader>l  :tabn<CR>
:map <Leader>fs :tab split<CR>
:map <Leader>xfs :tabc<CR>
:map <leader>ts :Windows<CR>

"navigating windows, tmap for terminal mappings
:map <c-l> :wincmd l<CR>
:tmap <c-l> <c-w>l
:map <c-h> :wincmd h<CR>
:tmap <c-h> <c-w>h
:map <c-k> :wincmd k<CR>
:tmap <c-k> <c-w>k
:map <c-j> :wincmd j<CR>
:tmap <c-j> <c-w>j
" take terminal out of insert mode
:tmap <Leader>e <c-\><c-n>

"resize windowi
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

:map <Leader>m :MaximizerToggle<CR>

"rails.vim
" go to related file
:map <Leader>r :R<CR>
" go to related file in vsplit
:map <Leader>z :RV<CR>

fun! StripTrailingWhitespace()
  if &ft =~ 'ruby\|javascript\|perl'
    %s/\s\+$//e
  endif
endfun

autocmd BufWritePre * call StripTrailingWhitespace()

" make sure slim file type gets set
autocmd BufNewFile,BufRead *.slim set ft=slim

