grammar-keywords
testClassKeyword
	self 
		parse: 'class' "result should be 'class' "
		rule: #classKeyword.

	self 
		parse: 'ClaSS ' "result should be 'ClaSS' "
		rule: #classKeyword.