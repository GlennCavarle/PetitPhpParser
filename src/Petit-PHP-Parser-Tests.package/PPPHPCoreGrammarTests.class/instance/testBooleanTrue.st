grammar-literals
testBooleanTrue
	""
	self 
		parse: 'true' "result should be true"
		rule: #booleanTrue.
	self 
		parse: 'TRUE' "result should be TRUE"
		rule: #booleanTrue.
	self 
		parse: 'TRue ' "result should be TRue"
		rule: #booleanTrue.