"" Language: LogiQL (Datalog LB)
"" Vim Highlighting: http://vimdoc.sourceforge.net/htmldoc/syntax.html
"" TODO: fix bracket error when function inside another (e.g. Foo[x, Bar[y]] = z)

syn clear

"syn match lbIdentifier /\<\l\+[:alnum:]]*\>/
syn match lbVar /[?_]\?\a[[:alnum:]_]*/
syn match lbVar /_/
syn match lbSymbol /`_\?\a[[:alnum:]:_]*/

syn match lbInteger /\d\+/
syn match lbReal /\d\+\(\.\d\+\)\?[eE]\?[+-]\?\d\+/
syn region lbString start="\"" end="\""
syn match lbTrue "true"
syn match lbFalse "false"

syn match lbConstraint "->"
syn match lbConstraint1 "-->"
syn match lbRule "<-"
syn match lbRule1 "<--"
syn match lbTerminator "\."
syn match lbNegation "!"
syn match lbConjunction ","
syn match lbDisjunction ";"
syn match lbEquals "="
syn match lbPlus "+"
syn match lbMinus "-"
syn match lbTimes "*"
syn match lbUpsert "\^"
syn match lbSlash "/"
syn match lbLtEq "<="
syn match lbGtEq ">="
syn match lbNotEq "!="
syn match lbLt "<"
syn match lbGt ">"
syn match lbColonColon "::"

syn match lbBraceErr "}"
syn match lbBrackErr "\]"
syn match lbParenErr ")"
syn match lbAggErr ">>"
syn match lbCommentErr "\*/"

syn region lbEnclAgg start="<<" end=">>" contains=ALLBUT,lbAggErr
syn region lbEnclParen start="(" end=")" contains=ALLBUT,lbParenErr
syn region lbEnclBrace start="{" end="}" contains=ALLBUT,lbBraceErr
syn region lbEnclBrack start="\[" end="\]" contains=ALLBUT,lbBrackErr

syn region lbPredicate start=/_\?\a[[:alnum:]:_]*\(@\a\+\)\?(/ end=/)/ keepend contains=lbEnclParen,lbStage,lbStageErr
syn region lbFunction start=/_\?\a[[:alnum:]:_]*\(@\a\+\)\?\[/ end=/\]/ keepend contains=lbEnclBrack,lbStage,lbStageErr

"" Colour Code delta operations
syn region lbPredicatePlus start=/+\a[[:alnum:]:_]*(/ end=/)/ keepend contains=lbEnclParen
syn region lbFunctionPlus start=/+\a[[:alnum:]:_]*\[/ end=/\]/ keepend contains=lbEnclBrack
syn region lbPredicateMinus start=/-\a[[:alnum:]:_]*(/ end=/)/ keepend contains=lbEnclParen
syn region lbFunctionMinus start=/-\a[[:alnum:]:_]*\[/ end=/\]/ keepend contains=lbEnclBrack
syn region lbPredicateUp start=/[\^]\a[[:alnum:]:_]*(/ end=/)/ keepend contains=lbEnclParen
syn region lbFunctionUp start=/[\^]\a[[:alnum:]:_]*\[/ end=/\]/ keepend contains=lbEnclBrack

syn region lbEngineDirective start=/lang:[[:alnum:]:_]*(/ end=/)/ keepend contains=lbEnclParen
syn region lbEngineDirective start=/lang:[[:alnum:]:_]*\[/ end=/\]/ keepend contains=lbEnclBrack

syn region lbBuiltInType start=/\(string\|datetime\)(/ end=/)/ keepend contains=lbEnclParen
syn region lbBuiltInType start=/\(int\|decimal\|float\)\[\d\+\](/ end=/)/ keepend contains=lbEnclParen,lbEnclBrack
syn match lbAggregator /\(agg\|count\|min\|max\|top\|bottom\|ambig\|and\|or\|concat\)[^[:alnum:]:_]/me=e-1
syn match lbStageErr /@[[:alnum:]:_]\+/
syn match lbStage /@\(init\(ial\)\?\|start\|final\|prev\(ious\)\?\|override\)[^[:alnum:]:_]/me=e-1

syn keyword lbTodo contained TODO FIXME XXX NOTE
syn region lbComment start="/\*" end="\*/" contains=lbTodo
syn match lbComment "//.*" contains=lbTodo


hi link lbVar Identifier
hi link lbSymbol Type

hi link lbInteger Number
hi link lbReal Float
hi link lbString String
hi link lbTrue Boolean
hi link lbFalse Boolean

hi link lbConstraint Keyword
hi link lbRule Keyword
hi link lbTerminator Keyword
hi link lbNegation Special
hi link lbConjunction Keyword
hi link lbDisjunction Keyword
hi link lbEquals Operator
hi link lbPlus Operator
hi link lbMinus Operator
hi link lbTimes Operator
hi link lbUpsert Operator
hi link lbSlash Operator
hi link lbLtEq Operator
hi link lbGtEq Operator
hi link lbNotEq Operator
hi link lbLt Operator
hi link lbGt Operator
hi link lbColonColon Keyword

hi link lbBraceErr Error
hi link lbBrackErr Error
hi link lbParenErr Error
hi link lbAggErr Error

hi link lbEnclParen Keyword
hi link lbEnclBrace Keyword
hi link lbEnclBrack Keyword

"" Type for Green
hi link lbPredicatePlus Type
hi link lbFunctionPlus Type
"" Constant for Red
hi link lbPredicateMinus Constant
hi link lbFunctionMinus Constant
"" Operator for Yellow
hi link lbPredicateUp Operator
hi link lbFunctionUp Operator

hi link lbEngineDirective Special

hi link lbBuiltInType Type
hi link lbAggregator Special
hi link lbStageErr Error
hi link lbStage Special
hi link lbDeltas Special

hi link lbTodo Todo
hi link lbComment Comment


"" Set the current syntax name
let b:current_syntax = "lb" 
