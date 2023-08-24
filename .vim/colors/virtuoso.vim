set bg=dark

highlight clear Scrollbar
highlight clear Menu
highlight clear SpecialKey
highlight clear NonText
highlight clear Directory
highlight clear ErrorMsg
highlight clear Search
highlight clear MoreMsg
highlight clear ModeMsg
highlight clear LineNr
highlight clear Question
highlight clear StatusLine
highlight clear StatusLineNC
highlight clear Title
highlight clear Visual
highlight clear WarningMsg
highlight clear Cursor
highlight clear Normal
highlight clear Comment
highlight clear Constant
highlight clear Special
highlight clear Identifier
highlight clear Statement
highlight clear PreProc
highlight clear Type
highlight clear Error
highlight clear Todo
highlight clear IncSearch
highlight clear String
highlight clear Character
highlight clear Number
highlight clear Boolean
highlight clear Float
highlight clear Function
highlight clear Conditional
highlight clear Repeat
highlight clear Label
highlight clear Operator
highlight clear Keyword
highlight clear Exception
highlight clear Include
highlight clear Define
highlight clear Macro
highlight clear PreCondit
highlight clear StorageClass
highlight clear Structure
highlight clear Typedef
highlight clear Tag
highlight clear SpecialChar
highlight clear Delimiter
highlight clear SpecialComment
highlight clear Debug

if exists("syntax_on")
	syntax reset
endif

let colors_name = "virtuoso"

highlight Scrollbar      guifg=darkgrey guibg=grey
highlight Menu           guifg=black guibg=grey
highlight SpecialKey     term=bold  ctermfg=yellow  guifg=yellow
highlight NonText        term=bold  ctermfg=yellow  gui=bold  guifg=yellow
highlight Directory      term=bold  ctermfg=brown  guifg=brown
highlight ErrorMsg       term=standout  ctermfg=lightgray  ctermbg=darkblue  guifg=lightgray  guibg=darkblue
highlight Search         term=reverse  ctermbg=red  guifg=White  guibg=red
highlight MoreMsg        term=bold  cterm=bold  ctermfg=darkgreen  gui=bold  guifg=darkgreen
highlight ModeMsg        term=bold  gui=bold  guifg=darkgreen  guibg=black
highlight LineNr         term=underline  ctermfg=darkcyan  guifg=darkcyan
highlight Question       term=standout  ctermfg=white  gui=bold  guifg=white
highlight StatusLine     term=bold,reverse  ctermfg=black ctermbg=white gui=bold guifg=black guibg=White
highlight StatusLineNC   term=reverse  ctermfg=black ctermbg=lightgray guifg=black guibg=lightgray
highlight Title          term=bold  cterm=bold  ctermfg=white  gui=bold  guifg=white
highlight Visual         term=reverse  cterm=reverse  gui=reverse
highlight WarningMsg     term=standout  cterm=bold  ctermfg=red  guifg=Red
highlight Cursor         guifg=Black  guibg=White
highlight Normal         guifg=White  guibg=black
highlight Comment        term=bold  ctermfg=darkcyan guifg=darkcyan
highlight Constant       term=underline  ctermfg=Yellow  guifg=darkcyan
highlight Special        term=bold  ctermfg=blue  guifg=blue
highlight Identifier     term=underline  ctermfg=lightcyan  guifg=lightblue
highlight Statement      term=bold  ctermfg=white  gui=bold  guifg=White
highlight PreProc        term=underline  ctermfg=green  guifg=lightgreen
highlight Type           term=underline  ctermfg=darkgreen  gui=bold  guifg=magenta
highlight Error          term=reverse  ctermfg=lightred  ctermbg=black  guifg=lightred  guibg=Black
highlight Todo           term=standout  ctermfg=red  ctermbg=black  guifg=lightred  guibg=Black
highlight Delme          term=standout  ctermfg=red  ctermbg=black  guifg=lightred  guibg=Black
highlight VirtType       term=underline  ctermfg=cyan  guifg=lightgreen
highlight link IncSearch       Visual
highlight link String          Constant
highlight link Character       Constant
highlight link Number          Constant
highlight link Boolean         Constant
highlight link Float           Number
highlight link Function        Identifier
highlight link cIdentifier     Identifier
highlight link cVirtType       cType
highlight link Conditional     Statement
highlight link Repeat          Statement
highlight link Label           Statement
highlight link Operator        Statement
highlight link Keyword         Statement
highlight link Exception       Statement
highlight link Include         PreProc
highlight link Define          PreProc
highlight link Macro           PreProc
highlight link PreCondit       PreProc
highlight link StorageClass    Type
highlight link Structure       Type
highlight link Typedef         Type
highlight link Tag             Special
highlight link SpecialChar     Special
highlight link Delimiter       Special
highlight link SpecialComment  Special
highlight link Debug           Special

