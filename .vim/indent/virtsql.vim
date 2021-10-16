" Vim indent file
" Language:	Virtuoso PL/SQL
" Maintainer:	
" New Maintainer: 
" Last Change:	2003 Oct 16

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
   finish
endif
let b:did_indent = 1


setlocal indentkeys-=:
setlocal sw=4

setlocal indentexpr=GetVirtIndent()


if exists("*GetVirtIndent")
    finish
endif

function GetVirtIndent()

  let theIndent = cindent(v:lnum)
  if getline(v:lnum) =~ '^.*:.*'
      let prev = prevnonblank(v:lnum - 1)
      while prev > 1
	  if getline(prev) !~ '^.*:.*'
	      break
	  endif
	  let prev = prevnonblank (prev - 1)
      endwhile
      let theIndent = indent (prev)
      if getline(prev) =~ '^\s*\(if\|while\|else\)\>' || getline(prev) =~ '^.*{.*'
	let theIndent = theIndent + ( &sw / 2 ) 
      endif
  elseif getline(v:lnum) !~ '^.*}.*'
      let prev1 = prevnonblank(v:lnum - 1)
      if (prev1 > 1 && getline(prev1) =~ '^.*:=.*') && getline(prev1) !~ '^\s*\(if\|while\|else\)\>'
      	let theIndent = indent (prev1)
      endif
  endif

  return theIndent
endfunction
