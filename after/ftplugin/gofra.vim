setlocal indentexpr=GetGofraIndent()
setlocal indentkeys=o,O,0),0],=end,=if,=while,=func,=struct
if exists('*shiftwidth')
  func s:sw()
    return shiftwidth()
  endfunc
else
  func s:sw()
    return &sw
  endfunc
endif

function! GetGofraIndent()
    let prevlnum = prevnonblank(v:lnum - 1)
    if prevlnum <= 1
        return 0
    endif

    let prevline = getline(prevlnum)
    let currline = getline(v:lnum)
    let indent = indent(prevlnum)

    let opening_pattern = '\<\(while\|do\|if\|struct\|[\|(\)\>'
    let closing_pattern = '\<\(end\|]\|)\)\>'

    if prevline =~ opening_pattern && (currline =~ closing_pattern || prevline =~ closing_pattern)
        return indent
    endif

    if prevline =~ opening_pattern
        return indent + s:sw()
    endif

    if currline =~ closing_pattern
        return indent - s:sw()
    endif

    return indent

endfunction

