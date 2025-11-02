setlocal indentexpr=GetGofraIndent()
setlocal indentkeys=0),0],=end,=if,=while,=func

function! GetGofraIndent()
    let prevlnum = prevnonblank(v:lnum)
    if prevlnum <= 1
        return 0
    endif

    let prevline = getline(prevlnum)
    let currentline = getline(v:lnum)
    let indent = indent(prevlnum)

    let opening_pattern = "\<\(while\|do\|if\|struct\|[\|(\)\>"

endfunction

