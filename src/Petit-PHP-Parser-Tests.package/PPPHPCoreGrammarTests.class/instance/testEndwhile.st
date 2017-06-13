grammar-keywords
testEndwhile
	self 
		parse: 'endwhile' "result should be 'endwhile' "
		rule: #endwhile.

	self 
		parse: 'eNdWhile ' "result should be 'eNdWhile' "
		rule: #endwhile.