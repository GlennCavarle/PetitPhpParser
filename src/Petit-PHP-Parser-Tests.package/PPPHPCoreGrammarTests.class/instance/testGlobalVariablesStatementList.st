grammar-variables
testGlobalVariablesStatementList
	self
		parse: 'global $a, $b;'
		rule:#variablesGlobalStatement.