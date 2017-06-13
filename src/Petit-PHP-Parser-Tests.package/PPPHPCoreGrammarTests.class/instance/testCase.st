grammar-keywords
testCase
	self 
		parse: 'case' "result should be 'case' "
		rule: #case.

	self 
		parse: 'casE  ' "result should be 'casE' "
		rule: #case.