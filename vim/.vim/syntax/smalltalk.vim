" Vim syntax file
" usmalltalk

if exists("b:current_syntax")
    finish
endif

" Keywords
syn keyword smClass     method nextgroup=smMessage skipWhite
syn keyword smClass     class
syn keyword smKeyword   set begin block val define use 
syn keyword smKeyword   new print
syn keyword smSelf      self

" Matches
syn match   smComment   /\;.*$/
syn match   smNumber    /\d/
syn match   smMessage   /\a\+:/
syn match   smLiteral   /\#\a\+/
syn match   smLiteral  /-\a\+/ contains=smClass
syn match   smSymbol   /[:+ - * / < > <= >= = | & :]/
syn match   smSymbol   "- "

" Highlighting
let b:current_syntax = "smt"

hi link smKeyword   Statement
hi link smComment   Comment
hi link smSelf      Preproc
hi link smClass     Type
hi link smSymbol    Function 
hi link smMessage   Function
hi link smNumber    Number
hi link smLiteral   String
