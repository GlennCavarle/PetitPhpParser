grammar-statements
testClassDeclarationComplexWithAliasedTypesAndCurrentNamespace
	|classNode funcNode|
	super testClassDeclarationComplexWithAliasedTypesAndCurrentNamespace.
	
	classNode := result last.
	funcNode := result at: result size - 1.
	
	self assert: (classNode isMemberOf: PPPHPClassNode).
	self assert: classNode nodeName = 'Checker'.
	self assert: classNode fullyQualifiedTypeName = 'Rcky\Test\Checker'.
	
	self assert: classNode superTypes first hasAlias.
	self assert: classNode superTypes first fullyQualifiedTypeName  = 'Rcky\Collections\FilterIterator'.
	self assert: classNode superTypes first alias flattenNamespace = 'FilterIt'.
	
	self assert: classNode interfaces first hasAlias.
	self assert: classNode interfaces first fullyQualifiedTypeName  = 'Rcky\Collections\Iterator'.
	self assert: classNode interfaces first alias flattenNamespace = 'Iterator'.
	
	self assert: classNode behaviouralEntities size = 5.
	self assert: classNode behaviouralEntities fifth hasParameters.
	self assert: classNode behaviouralEntities fifth parameters first hasTypeHint.
	self assert: classNode behaviouralEntities fifth parameters first typeHint fullyQualifiedTypeName = 'Rcky\Test\It'.
	
	self assert: funcNode scope hasAlias not.
	self assert: funcNode nodeName = 'checkThis'.
	self assert: funcNode scope flattenNamespace = 'Rcky\Test\checkThis'.
	self assert: funcNode parameters size = 1.
	self assert: funcNode parameters first hasTypeHint.
	self assert: funcNode parameters first typeHint fullyQualifiedTypeName = 'Rcky\Test\Hint'.