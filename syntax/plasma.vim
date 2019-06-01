
" Keywords and other recognised syntax.
syn keyword plzModule module
syn keyword plzModule export
syn keyword plzModule import
syn keyword plzModuleOp from
syn keyword plzModuleOp as
syn keyword plzEntity type
syn keyword plzEntity func
syn keyword plzEntity resource
syn keyword plzResOp uses
syn keyword plzResOp observes
syn keyword plzControl return
syn keyword plzConditional match
syn keyword plzConditional if
syn keyword plzConditional else
syn keyword plzOperator not
syn keyword plzOperator and
syn keyword plzOperator or

" Bang when it is not part of !=, This overmatches the current use of ! in
" Plamsa but that may be okay.
syn match plzBang "![^=]" 

" Some pre-defined types.
syn keyword plzType Int
syn keyword plzType List 
syn keyword plzType String
syn keyword plzRes IO

" Constants
syn match plzNumber "\v<\d+>"
syn match plzNumber "\v<\d+>.<\d+>"
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
" plzOperator is not high-lighted.

