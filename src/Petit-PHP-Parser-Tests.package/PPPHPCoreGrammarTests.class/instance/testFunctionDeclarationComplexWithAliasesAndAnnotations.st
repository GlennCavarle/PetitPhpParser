as yet unclassified
testFunctionDeclarationComplexWithAliasesAndAnnotations
	self
		parse: '
			use Rcky\Test\Components as A;
			
			/**
			 * @Inversed(true)
			 */
			function Somewhere\aFunzione( A\Type\Hint $paramOne, Iterator $paramTwo){
			}'
		rule: #topStatements.
	