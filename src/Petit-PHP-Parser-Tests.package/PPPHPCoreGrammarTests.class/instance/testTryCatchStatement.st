grammar-control-structures
testTryCatchStatement
	self
		parse: 'try {	
		} catch (\Exception $ex) {
		}'
		rule: #tryCatchStatement.