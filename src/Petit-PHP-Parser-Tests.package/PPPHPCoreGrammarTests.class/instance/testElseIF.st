grammar-keywords
testElseIF
	self 
		parse: 'elseif' "result should be 'elseif' "
		rule: #elseif.

	self 
		parse: ' else if ' "result should be 'ELSeif' "
		rule: #elseif.