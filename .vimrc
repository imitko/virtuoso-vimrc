set nocompatible
set backspace=2
filetype indent on
set ruler
set shell=bash
set showmatch
set showmode
set showcmd
"set modeline 
let g:ctags_regenerate=0 

"" mapping some keys on my keyboard
map <ESC>[2~ i
" del
map <ESC>[3~ x
" pos1
map <ESC>[1~ ^
" end
map <ESC>[4~ $
" PgUp
map <ESC>[5~ <C-B>
" PgDown
map <ESC>[6~ <C-F>

set number

"" colours in xterm
map <F3> :se t_Co=16<C-M>:se t_AB=<C-V><ESC>[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm<C-V><C-M>:se t_AF=<C-V><ESC>[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm<C-V><C-M>

nmap <F10> :cc
nmap <F11> :cp
nmap <F12> :cn

"" <F9> toggles highlightning
nmap <F9> :if has("syntax_items")<CR>syntax off<CR>else<CR>syntax on<CR>endif<CR><CR>
map <F5> maH:let x="Shown: lines ".line(".")<CR>L:let x=x." - ".line(".")<CR>:echo x<CR>`a
nmap <F8> /^\([[:space:]]*\)dbg_
nmap <F6> :set spell spelllang=en_us
nmap <F7> :e ++enc=cp1251
" set nospell

nmap :W :w
nmap :Q :q

"" search the current word in all files in the working directory
map ,x vawy:! grep <C-R>" .* *<CR>

:version 5.x
"" keep the horizontal cursor position when moving vertically
set nostartofline

"" highlighted search
"" don´t use the mouse
set mouse=

"" always show the name of the file being edited
set ls=2

"" a dash "-" added for more fun with wordwise commands
set iskeyword=@,48-57,_,192-255,-

"" some adjustements for mails and news
au BufNewFile,BufReadPost .followup,snd.*,.letter,.article,.article.[0-9]\+,pico.[0-9]\+,mutt*[0-9] se nocin
au BufNewFile,BufReadPost .followup,snd.*,.letter,.article,.article.[0-9]\+,pico.[0-9]\+,mutt*[0-9] se ai
au BufNewFile,BufReadPost .followup,snd.*,.letter,.article,.article.[0-9]\+,pico.[0-9]\+,mutt*[0-9] se tw=72
au BufNewFile,BufReadPost .followup so $VIMRUNTIME/syntax/mail.vim

"" TABs are needed in Makefiles

" always show commands that are not yet typed in completely
se showcmd

map ,dir :sp ~/tmp/vimdir<CR>G1dG:r!ls -al<CR>:se nomod<CR>
no ,gf $T y$:if isdirectory("<C-R>"")<CR>:cd <C-R>"<CR>:bd<CR>:norm ,dir<CR>else<CR>:norm gf<CR>endif<CR>

"kill trailing space
"au BufWrite *.c,*.cpp,*.html,*.vsp,*.php,*.awk,*.h,*.l,*.y,*.sql,*.xsl,*.vspx,*.xsd %subst/\s\+$//e
"au BufWrite *.sql,*.xsl,*.vspx,*.xsd,*.logic %subst/\s\+$//e
map <F4> :%subst/\s\+$//e

"se noexpandtab
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
au BufNewFile,BufReadPost Makefile se noexpandtab
au BufNewFile,BufReadPost GNUmakefile se noexpandtab


se cinoptions=t0,{0.5s,n-0.5s,^-0.5s,(1s,u0.5s,e-0.5s

set tags=tags

fun! ShowFuncName()
    let lnum = line(".")
    let col = col(".")
    echohl ModeMsg
    echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
    echohl None
    call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun
map f :call ShowFuncName() <CR>

set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

syntax on
colorscheme virtuoso
set encoding=utf-8
set fileencoding=utf-8
