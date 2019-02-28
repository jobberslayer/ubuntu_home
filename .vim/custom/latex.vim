" movement changes
map j gj
map k gk
" formatting text
setlocal textwidth=100
setlocal linebreak
setlocal formatoptions+=t
setlocal noexpandtab
setlocal wrap
setlocal linebreak
setlocal tabstop=4
" spelling and thesaurus
setlocal spell spelllang=en_us
setlocal noautoindent
setlocal nocindent
setlocal nosmartindent
setlocal indentexpr=
" z= to get spelling suggestions
setlocal spell
setlocal foldmethod=marker
setlocal foldmarker=(fold),(end)
syntax spell toplevel
" get rid of naggy warning. can not find a work around 
" but doesn't seem to affect anything
let g:syntastic_quiet_messages = { 'regex': 'Delete this space' }

"set thesaurus+=/home/test/.vim/thesaurus/mthesaur.txt

" complete+=s makes autocompletion search the thesaurus
"set complete+=s
