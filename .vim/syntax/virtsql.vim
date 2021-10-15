source $VIMRUNTIME/syntax/sql.vim
unlet b:current_syntax
syntax include @SQL $VIMRUNTIME/syntax/sql.vim

syn keyword sqlSpecial   null

syn keyword sqlKeyword  authorization check cursor go indicator language precision procedure  primary key foreign
syn keyword sqlKeyword  contiguous object_id under clustered  replacing soft before  after 
syn keyword sqlKeyword  references schema work instead trigger referencing old method
syn keyword sqlKeyword  contiguous object_id under clustered  replacing soft out inout in returns do exclusive 
syn keyword sqlKeyword  prefetch found revoke password collate incremental nonincremental snapshot case when then end xml temporary constructor attribute

syn keyword sqlStatement attach close continue fetch foreach goto open whenever purge
syn keyword sqlStatement shutdown checkpoint backup replication sync disconnect rename 
syn keyword sqlStatement if then else elseif while return call execute declare signal

syn keyword sqlOperator	found sqlcode sqlerror ref system self exit handler sqlstate overriding
syn keyword sqlType	double real varbinary binary timestamp datetime time nchar nvarchar int

"unlet b:current_syntax
"syntax include @HTMLS $VIMRUNTIME/syntax/html.vim
"syntax region vspScript1 start="?>" end="<?vsp" contains=@HTMLS
"syntax cluster vspScript contains=vspScript1

"hi vspScript1 ctermfg=brown 
