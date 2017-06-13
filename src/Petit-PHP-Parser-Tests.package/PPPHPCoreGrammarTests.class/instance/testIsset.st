grammar-language-construct
testIsset
	self 
		parse: 'isset'
		rule: #isset.

	self 
		parse: 'Isset '
		rule: #isset.