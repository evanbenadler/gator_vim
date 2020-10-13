if exists("b:current_syntax")
  finish
endif

syn keyword gatorType int float

hi def link gatorType Type
