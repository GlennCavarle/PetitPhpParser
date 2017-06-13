grammar-variables
testStaticVariablesStatementList
	self
		parse: 'static $a = ++1, $b = true;'
		rule:#variablesStaticStatement.