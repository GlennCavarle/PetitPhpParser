as yet unclassified
testFunctionDeclarationWithParametersAndTypeHints
	self
		parse: 'function( A\Type\Hint $paramOne, $paramTwo){}'
		rule: #functionDeclaration.
	