as yet unclassified
testFunctionDeclarationWithParametersAndTypeHintsAndDefaults
	self
		parse: 'function theName(A\Type\Hint $paramOne = null, Array $paramTwo = array()){}'
		rule: #functionDeclaration.
	