" Vim syntax file
" Language:	Diff (context or unified)
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2001 May 10

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
source $VIMRUNTIME/syntax/diff.vim
unlet b:current_syntax

syn match diffRemoved	"^-.*"
syn match diffRemoved	"^<.*"
syn match diffAdded	"^+.*"
syn match diffAdded	"^>.*"
syn match diffChanged	"^! .*"

hi diffRemoved	ctermfg=yellow
hi diffChanged	cterm=bold ctermfg=red
hi diffAdded	ctermfg=green

let b:current_syntax = "diff"

" vim: ts=8 sw=2
