if exists("b:current_syntax")
  finish
endif

syn keyword gofraBoolean true false
syn keyword gofraType int bool void char
syn keyword gofraStatement if while do end inline extern global var call struct
syn match gofraPreprocessorDirective /\s*\zs#\<\(include\|macro\|endif\|ifdef\|define\)\>\s*/
syn keyword gofraOperator + - * / // == != < > <= >= % ?> !<
syn keyword gofraBuiltinFunction dec inc swap copy drop assert

" TODO: Create a script for parsing all stdlib functions from official gofra repository

" functions from gofra std library os/io.gof
syn keyword gofraBuiltinFunction print print_fd input input_fd println eprint eprint_fatal print_integer print_integer_fd

" syscall-related functions
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

" NOTE: Type `:h group-name` in vim to get help about last argument of `hi` command
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
