grammar-keywords
testInterface
	self 
		parse: 'interface' "result should be 'interface' "
		rule: #interface.

	self 
		parse: 'intERfAce ' "result should be 'intERfAce' "
		rule: #interface.