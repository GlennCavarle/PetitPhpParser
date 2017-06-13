grammar-keywords
testAs
	self 
		parse: 'as' "result should be 'as' "
		rule: #as.

	self 
		parse: 'aS ' "result should be 'aS' "
		rule: #as.