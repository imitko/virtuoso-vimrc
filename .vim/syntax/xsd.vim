
if exists("b:current_syntax")
    finish
endif

runtime syntax/xsd.vim

syn cluster xmlTagHook add=xsElement
syn case match

syn match xsElement '\%(xs:\)\@<=all'
syn match xsElement '\%(xs:\)\@<=annotation'
syn match xsElement '\%(xs:\)\@<=any'
syn match xsElement '\%(xs:\)\@<=anyAttribute'
syn match xsElement '\%(xs:\)\@<=appInfo'
syn match xsElement '\%(xs:\)\@<=attribute'
syn match xsElement '\%(xs:\)\@<=attributeGroup'
syn match xsElement '\%(xs:\)\@<=choice'
syn match xsElement '\%(xs:\)\@<=complexContent'
syn match xsElement '\%(xs:\)\@<=complexType'
syn match xsElement '\%(xs:\)\@<=documentation'
syn match xsElement '\%(xs:\)\@<=element'
syn match xsElement '\%(xs:\)\@<=enumeration'
syn match xsElement '\%(xs:\)\@<=extension'
syn match xsElement '\%(xs:\)\@<=field'
syn match xsElement '\%(xs:\)\@<=group'
syn match xsElement '\%(xs:\)\@<=import'
syn match xsElement '\%(xs:\)\@<=include'
syn match xsElement '\%(xs:\)\@<=key'
syn match xsElement '\%(xs:\)\@<=keyref'
syn match xsElement '\%(xs:\)\@<=length'
syn match xsElement '\%(xs:\)\@<=list'
syn match xsElement '\%(xs:\)\@<=maxInclusive'
syn match xsElement '\%(xs:\)\@<=maxLength'
syn match xsElement '\%(xs:\)\@<=minInclusive'
syn match xsElement '\%(xs:\)\@<=minLength'
syn match xsElement '\%(xs:\)\@<=pattern'
syn match xsElement '\%(xs:\)\@<=redefine'
syn match xsElement '\%(xs:\)\@<=restriction'
syn match xsElement '\%(xs:\)\@<=schema'
syn match xsElement '\%(xs:\)\@<=selector'
syn match xsElement '\%(xs:\)\@<=sequence'
syn match xsElement '\%(xs:\)\@<=simpleContent'
syn match xsElement '\%(xs:\)\@<=simpleType'
syn match xsElement '\%(xs:\)\@<=union'
syn match xsElement '\%(xs:\)\@<=unique'

hi def link xsElement Statement

" vim: ts=8
