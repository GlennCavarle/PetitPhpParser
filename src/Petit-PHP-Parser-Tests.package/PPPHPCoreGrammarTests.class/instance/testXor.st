grammar-keywords
testXor
	self 
		parse: 'xor' "result should be 'xor' "
		rule: #xor.

	self 
		parse: ' XOR ' "result should be 'XOR' "
		rule: #xor.