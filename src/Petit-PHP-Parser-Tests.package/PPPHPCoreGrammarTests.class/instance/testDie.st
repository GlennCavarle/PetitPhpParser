grammar-language-construct
testDie
	self 
		parse: 'die'
		rule: #die.

	self 
		parse: 'DIe '
		rule: #die.