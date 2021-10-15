" Vim syntax file
" Language:     HTML
" Maintainer:   Claudio Fleiner <claudio@fleiner.com>
" URL:          http://www.fleiner.com/vim/syntax/html.vim
" Last change:  1999 Jul 20

" Please check :help html.vim for some comments and a description of the options

" Remove any old syntax stuff hanging around
source $VIMRUNTIME/syntax/html.vim
unlet b:current_syntax
syntax include @SQL $VIMRUNTIME/syntax/sql.vim
source <sfile>:p:h/virtsql.vim
syntax region vspScript1 start="<?vsp" end="?>" contains=@SQL
syntax region vspScript2 start="<?=" end="?>" contains=@SQL
syntax region vspScript3 start="<?/" end="?>" contains=@SQL
syntax region vspScript5 start="<?U" end="?>" contains=@SQL
syntax cluster vspScript contains=vspScript1,vspScript2,vspScript3,vspScript4,vspScript5

hi vspScript1 ctermfg=brown 
hi vspScript2 cterm=bold ctermfg=lightgreen 
hi vspScript3 cterm=bold ctermfg=lightgreen 
hi vspScript5 cterm=bold ctermfg=lightgreen 
