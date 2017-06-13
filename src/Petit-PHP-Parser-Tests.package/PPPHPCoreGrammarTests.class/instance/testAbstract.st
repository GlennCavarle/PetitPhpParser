grammar-keywords
testAbstract
	self 
		parse: 'abstract' "result should be 'abstract' "
		rule: #abstract.

	self 
		parse: 'AbStRAct ' "result should be 'AbStRAct' "
		rule: #abstract.