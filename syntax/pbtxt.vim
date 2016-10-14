" syntax file for PBtxt files

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syntax clear
syn case match

syn keyword pbtxtTODO    TODO FIXME XXX contained
syn match   pbtxtInt     /-\?\<\d\+\>/
syn match   pbtxtInt     /\<0[xX]\x+\>/
syn match   pbtxtFloat   /\<-\?\d*\(\.\d*\)\?/
syn keyword pbtxtBool    true false contained

syn match   pbtxtMsgName "^\s*\w\+\s*{"me=e-1
syn match   pbtxtField   "^\s*\w\+:"me=e-1
syn match   pbtxtComment "#.*" contains=pbtxtTODO
syn match   pbtxtEnum    ":\s*\a\w\+"ms=s+1 contains=pbtxtBool
syn match   pbtxtString  /"[^"]*"/

hi def link pbtxtTODO    Todo
hi def link pbtxtInt     Number
hi def link pbtxtFloat   Float
hi def link pbtxtMsgName Structure
hi def link pbtxtComment Comment
hi def link pbtxtField   Identifier
hi def link pbtxtBool    Boolean
hi def link pbtxtEnum    Define
hi def link pbtxtString  String

let b:current_syntax = "pbtxt"
