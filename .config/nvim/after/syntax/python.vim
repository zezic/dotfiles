syn region FCall matchgroup=FName start='[[:alpha:]_]\i*\s*(' end=')' contains=FCall,FCallKeyword
syn match FCallKeyword /\i*\ze\s*=[^=]/ contained

syn keyword pythonStatement	class nextgroup=pythonClass skipwhite
syn match   pythonClass
\ "\%(\%(class\s\)\s*\)\@<=\h\%(\w\|\.\)*" contained

hi def link pythonClass Structure
