as yet unclassified
testFunctionDeclarationClosure
	self
		parse: '
		function($paramOne, $paramTwo) use ($avariable, $another)
		{}'
		rule: #functionDeclaration.