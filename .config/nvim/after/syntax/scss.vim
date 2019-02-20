syntax match scssNoise contained /\(\$\|:\|;\)/ containedin=scssDefinition,scssAttribute,scssAttributeWithNestedDefinition,scssNestedDefinition,scssVariable,scssMapValue
syn region scssComment start="//" end="$"
syntax match scssNoise /\(;\)/
syntax match scssNoise /\(,\)/ containedin=scssMap,scssParameterList,scssVariableValue
syntax match scssNoise /\((\|)\)/ containedin=scssAttribute
hi link scssMixinParams Noise
hi link scssMapParens Noise
syn match scssVariable "$[[:alnum:]_-]\+" containedin=cssFunction,scssFunction,cssInclude,cssMediaBlock,cssMediaType,scssAttribute nextgroup=scssVariableAssignment skipwhite
syntax match scssOperators contained /\(\/\|+\|*\|<\|>\|==\)/ containedin=scssAttribute,scssInterpolation,scssCondition,scssVariableValue,scssOutput
hi link scssOperators OperatorChars
syntax match sassAChar "@" contained containedin=scssImport,scssExtend,scssIf,scssMixin,scssInclude,cssAtRule
