if exists("b:current_syntax")
  finish
endif

syn keyword gofraBoolean true false
syn keyword gofraType int ptr bool void
syn keyword gofraConst FD_STD_IN FD_STD_OUT FD_STD_ERR MACOS_SC_SYSCALL MACOS_SC_FORK MACOS_SC_EXIT MACOS_SC_READ MACOS_SC_WRITE
syn keyword gofraStatement if while do end inline extern func global memory
syn keyword gofraPreprocessorDirective #include #macro #ifdef #endif
syn keyword gofraOperator + - * / == != < > <= >= % ?> !<
syn keyword gofraBuiltinFunction dec inc swap copy drop
syn keyword gofraSyscall syscall0 syscall1 syscall2 syscall3 syscall4 syscall5 syscall6 sc_syscall sc_exit sc_fork sc_write sc_read

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
hi def link gofraConst                 Constant
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
