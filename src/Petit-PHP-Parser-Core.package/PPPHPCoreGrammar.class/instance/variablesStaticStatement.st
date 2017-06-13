grammar-variables
variablesStaticStatement
	^ static, ((variable, ($= asParser trim, expression) optional ) separatedBy: comma) , endStatementDelimiter.