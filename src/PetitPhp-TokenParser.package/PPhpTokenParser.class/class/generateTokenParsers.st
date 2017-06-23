initialization
generateTokenParsers
	|tokens tokenKeys diffAttrRm diffAttrAdd |
	tokens := self allTokens.
	tokenKeys := tokens collect:[:each| each name].
	diffAttrAdd := tokenKeys difference: self instVarNames.
	diffAttrRm := self instVarNames difference: tokenKeys.
	
	(tokenKeys difference: self instVarNames)
		do:[:each| self addInstVarNamed: each].
		
	(self instVarNames difference: tokenKeys) 
		do: [ :each | self removeInstVarNamed: each ].
	
	(self selectors difference:  tokenKeys)
		do: [ :each | self removeSelector: each ].
		
	tokens do:[:each| each compileGetterInClass: self]