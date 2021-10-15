
if exists("b:current_syntax")
    finish
endif

runtime syntax/xml.vim

syn cluster xmlTagHook add=vspxElement
syn cluster xmlTagHook add=vspxOldElement
syn cluster xmlNamespaceHook add=vspxNamespace
"syn cluster xmlStartTagHook add=vspxStartTag
syn case match

syn match vspxElement '\%(v:\)\@<=after-data-bind'
syn match vspxElement '\%(v:\)\@<=before-data-bind'
syn match vspxElement '\%(v:\)\@<=on-post'
syn match vspxElement '\%(v:\)\@<=before-render'
syn match vspxElement '\%(v:\)\@<=on-init'
syn match vspxElement '\%(v:\)\@<=page'
syn match vspxElement '\%(v:\)\@<=include'
syn match vspxElement '\%(v:\)\@<=template'
syn match vspxElement '\%(v:\)\@<=form'
syn match vspxElement '\%(v:\)\@<=tab'
syn match vspxElement '\%(v:\)\@<=script'
syn match vspxElement '\%(v:\)\@<=variable'
syn match vspxElement '\%(v:\)\@<=validator'
syn match vspxElement '\%(v:\)\@<=field'
syn match vspxElement '\%(v:\)\@<=button'
syn match vspxElement '\%(v:\)\@<=radio-button'
syn match vspxElement '\%(v:\)\@<=check-box'
syn match vspxElement '\%(v:\)\@<=text'
syn match vspxElement '\%(v:\)\@<=textarea'
syn match vspxElement '\%(v:\)\@<=item'
syn match vspxElement '\%(v:\)\@<=select-list'
syn match vspxElement '\%(v:\)\@<=key'
syn match vspxElement '\%(v:\)\@<=label'
syn match vspxElement '\%(v:\)\@<=url'
syn match vspxElement '\%(v:\)\@<=data-list'
syn match vspxElement '\%(v:\)\@<=node'
syn match vspxElement '\%(v:\)\@<=tree'
syn match vspxElement '\%(v:\)\@<=error-summary'
syn match vspxElement '\%(v:\)\@<=login-form'
syn match vspxElement '\%(v:\)\@<=login'
syn match vspxElement '\%(v:\)\@<=column'
syn match vspxElement '\%(v:\)\@<=data-set'
syn match vspxElement '\%(v:\)\@<=param'
syn match vspxElement '\%(v:\)\@<=data-grid'
syn match vspxElement '\%(v:\)\@<=isql'
syn match vspxElement '\%(v:\)\@<=radio-group'
syn match vspxElement '\%(v:\)\@<=row-template'
syn match vspxElement '\%(v:\)\@<=tree-node'
syn match vspxElement '\%(v:\)\@<=hidden'
syn match vspxElement '\%(v:\)\@<=style'
syn match vspxElement '\%(v:\)\@<=placeholder'
syn match vspxElement '\%(v:\)\@<=calendar'
syn match vspxElement '\%(v:\)\@<=expression'
syn match vspxElement '\%(v:\)\@<=data-source'
syn match vspxElement '\%(v:\)\@<=login-form'
syn match vspxElement '\%(v:\)\@<=rowset'
syn match vspxElement '\%(v:\)\@<=node-template'
syn match vspxElement '\%(v:\)\@<=node-set'
syn match vspxElement '\%(v:\)\@<=leaf-template'
syn match vspxElement '\%(v:\)\@<=horizontal-template'
syn match vspxElement '\%(v:\)\@<=sql'
syn match vspxElement '\%(v:\)\@<=vscx'
syn match vspxElement '\%(v:\)\@<=method'
syn match vspxElement '\%(v:\)\@<=local-variable'

syn match vspxOldElement '\%(v:\)\@<=browse-button'
syn match vspxOldElement '\%(v:\)\@<=update-field'

syn match vspxNamespace '\%(v:\)'

"hi def link vspxElement Statement
"hi def link vspxNamespace Statement
hi vspxElement cterm=bold ctermfg=LightMagenta
hi vspxOldElement cterm=bold ctermfg=Red
hi vspxNamespace cterm=bold ctermfg=LightMagenta

"hi vspxStartTag cterm=bold ctermfg=LightMagenta

" vim: ts=8

if exists("b:did_indent")
    unlet b:did_indent
endif

se shiftwidth=2
runtime! indent/xml.vim
