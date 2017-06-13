grammar-statements
testFunctionDeclarationComplexWithAliasesAndAnnotations
	| func |
	super testFunctionDeclarationComplexWithAliasesAndAnnotations.
	func := result last.
	self assert: func nodeName = 'aFunzione'.
	self assert: func scope flattenNamespace = 'Somewhere\aFunzione'.
	self assert: func hasDocBlock.
	self assert: func docBlockHasAnnotations.
	self assert: func docBlockAnnotations size = 1.
	self assert: func hasParameters.
	self assert: func parameters size = 2.
	self assert: (func parameters first typeHint hasAlias).
	self assert: (func parameters first typeHint fullyQualifiedTypeName = 'Rcky\Test\Components\Type\Hint').
	
	self assert: (func parameters second typeHint hasAlias not).
	self assert: (func parameters second typeHint fullyQualifiedTypeName = 'Iterator').
	
	
	