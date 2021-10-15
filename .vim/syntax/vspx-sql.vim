" Vim syntax file
" Language:     HTML
" Maintainer:   Claudio Fleiner <claudio@fleiner.com>
" URL:          http://www.fleiner.com/vim/syntax/html.vim
" Last change:  1999 Jul 20

" Please check :help html.vim for some comments and a description of the options

" Remove any old syntax stuff hanging around
source $VIMRUNTIME/syntax/sql.vim
unlet b:current_syntax
"syntax include @HTML $VIMRUNTIME/syntax/html.vim
source <sfile>:p:h/virtsql.vim

syntax region vspScript1 start="?>" end="<?vsp" 
syntax match  vspxComment "#.*$"
"contains=@HTML
"syntax cluster vspScript contains=vspScript1

hi vspScript1 ctermfg=brown 
hi def link vspxComment Comment 
