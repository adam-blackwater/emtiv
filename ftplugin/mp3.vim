function! GetTags()
    let id3v2tags = system("id3v2 --list \"" . expand('%:p') . "\"")
    vsplit __tags__
    call append(0, split(id3v2tags, '\v\n'))
endfunction

function! SaveTags()
    echom "Save"
endfunction
