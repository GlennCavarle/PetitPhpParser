grammar-constants
testConstantDeclarationStatementList
	self parse: 'const JROUTER_MODE_SEF = 1 , JROUTER_MODE_RAW = 0;'
		rule: #constantDeclarationStatement