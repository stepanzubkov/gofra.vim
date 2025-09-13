if exists("b:current_syntax")
  finish
endif

syn keyword gofraBoolean true false
syn keyword gofraType int ptr bool void
syn keyword gofraStatement if while do end inline extern global memory 
syn match gofraPreprocessorDirective /^\s*\zs#\s*\(include\|macro\|endif\|ifdef\|define\)\>\s*/
syn keyword gofraOperator + - * / // == != < > <= >= % ?> !<
syn keyword gofraBuiltinFunction dec inc swap copy drop
syn keyword gofraBuiltinFunction syscall0 syscall1 syscall2 syscall3 syscall4 syscall5 syscall6
syn keyword gofraBuiltinFunction  sc_syscall sc_exit sc_fork sc_write sc_read sc_open sc_close

syn keyword gofraStatement func nextgroup=gofraFunction skipwhite

syn match gofraNumber /\<[1-9][0-9]*\>/ display
syn match gofraNumber /\<0\>/ display
syn match gofraNumber /\<0x[0-9A-Fa-f]\+\>/ display

syn match gofraChar /'\\\?.'/ contains=gofraSpecialChar
syn region gofraString start=/"/ skip=/\\"/ end=/"/ contains=gofraSpecialChar
syn match gofraSpecialChar /\\[nrtb]/ contained

syn match gofraComment /\/\/.*/ contains=gofraTodo
syn keyword gofraTodo FIXME NOTE TODO OPTIMIZE XXX HACK contained

let b:current_syntax = "gofra"

hi def link gofraBoolean               Boolean
hi def link gofraType                  Type
hi def link gofraPreprocessorDirective PreProc
hi def link gofraStatement             Statement
hi def link gofraOperator              Operator
hi def link gofraBuiltinFunction       Function
hi def link gofraSyscall               Function
hi def link gofraNumber                Number
hi def link gofraChar                  Character
hi def link gofraString                String
hi def link gofraSpecialChar           SpecialChar
hi def link gofraComment               Comment
hi def link gofraTodo                  Todo
