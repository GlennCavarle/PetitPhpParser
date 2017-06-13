grammar-keywords
testEndForeach
	self 
		parse: 'endforeach' "result should be 'endforeach' "
		rule: #endforeach.

	self 
		parse: 'EndForEach ' "result should be 'EndForEach' "
		rule: #endforeach.