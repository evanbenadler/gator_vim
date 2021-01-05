if exists("b:current_syntax")
  finish
endif

syn keyword gatorType object coordinate frame int float string auto bool void this
syn keyword gatorBool true false
syn keyword gatorControl if else elif for skip return
syn match   gatorDanger "as!"
syn keyword gatorDanger in
syn keyword gatorKeyword using prototype type is has with out declare dimension canon const uniform varying attribute typedef struct class public private protected
syn keyword gatorBuiltin print genType
syn match   gatorNumber "[^a-zA-Z0-9]\zs-\?[0-9]\+\.\?\ze[^a-zA-Z0-9]"
syn match   gatorNumber "\[^a-zA-Z0-9]\zs-\?[0-9]*\.[0-9]\+\ze[^a-zA-Z0-9]"
syn match   gatorNumber "\[^a-zA-Z0-9]\zs-\?[0-9]\+\.[0-9]*\ze[^a-zA-Z0-9]"
syn region  gatorString start=+"+ skip=+\\\\\|\\"+ end=+"\|$+
syn region  gatorCommentLine start="//" end="$" contains=gatorTodo
syn region  gatorCommentBlock matchgroup=gatorCommentBlock start="/\*\%(!\|\*[*/]\@!\)\@!" end="\*/" contains=gatorTodo
syn keyword gatorTodo contained TODO FIXME XXX NB NOTE SAFETY
syn match   gatorParameter "\S\zs<\S*>"

hi def link gatorType Type
hi def link gatorBool Boolean
hi def link gatorControl Macro
hi def link gatorDanger Todo
hi def link gatorKeyword Keyword
hi def link gatorBuiltin Function
hi def link gatorTodo Todo
hi def link gatorCommentLine Comment
hi def link gatorCommentBlock Comment
hi def link gatorNumber Operator
hi def link gatorString String
hi def link gatorParameter Comment
