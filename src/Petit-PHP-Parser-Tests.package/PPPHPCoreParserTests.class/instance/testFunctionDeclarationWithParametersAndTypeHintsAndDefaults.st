grammar-statements
testFunctionDeclarationWithParametersAndTypeHintsAndDefaults
	super testFunctionDeclarationWithParametersAndTypeHintsAndDefaults.
	
	self assert: (result isMemberOf: PPPHPFunctionNode ).
	self assert: (result nodeName = 'theName').
	self assert: (result parameters size = 2).
	self assert: (result scope flattenNamespace = 'theName').