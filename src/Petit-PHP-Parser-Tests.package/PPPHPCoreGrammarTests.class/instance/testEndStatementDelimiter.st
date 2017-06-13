grammar-keywords
testEndStatementDelimiter
	self 
		parse: ';' "result should be ';' "
		rule: #endStatementDelimiter.

	self 
		parse: '   ; ' "result should be ';' "
		rule: #endStatementDelimiter.