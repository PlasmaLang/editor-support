
" the - symbol delimits keywords, unlike English.
setlocal iskeyword=@,48-57,_,!,#,$,%

" Keywords and other recognised syntax.
syn keyword plzModule module
syn keyword plzModule export
syn keyword plzModule abstract
syn keyword plzModule entrypoint
syn keyword plzModule import
syn keyword plzModuleOp from
syn keyword plzModuleOp as
syn keyword plzEntity type
syn keyword plzEntity func
syn keyword plzEntity resource
syn keyword plzEntity var
syn keyword plzResOp uses
syn keyword plzResOp observes
syn keyword plzControl return
syn keyword plzConditional match
syn keyword plzConditional if
syn keyword plzConditional then
syn keyword plzConditional else
syn keyword plzOperator not
syn keyword plzOperator and
syn keyword plzOperator or

" Match Bang when it is involved in a call.
syn match plzBang "\v[a-zA-Z0-9_]!\("hs=s+1,he=e-1

" Some pre-defined types.
syn keyword plzType Int
syn keyword plzType List 
syn keyword plzType String
syn keyword plzRes IO

" Constants
syn match plzNumber "\v-?<\d+>"
syn region plzString start=+"+ end=+"+ skip=+\\"+

" Comments 
syn region plzComment start="/\*" end="\*/" keepend
syn region plzComment start="//" skip="\\$" end="$" keepend

" Map them onto colours
hi def link plzBang         Special
hi def link plzComment      Comment
hi def link plzConditional  Conditional
hi def link plzControl      Statement
hi def link plzEntity       Typedef
hi def link plzModule       PreProc
hi def link plzModuleOp     PreProc
hi def link plzNumber       Number
hi def link plzRes          Type
hi def link plzResOp        Operator 
hi def link plzString       String
hi def link plzType         Type
hi def link plzOperator     Operator

