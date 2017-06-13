as yet unclassified
testFunctionDeclarationComplex
	self
		parse: '
			/**
			 * @Inversed(true)
			 */
			function aFunzione( A\Type\Hint $paramOne, Iterator $paramTwo){
			}'
		rule: #functionDeclaration.
	