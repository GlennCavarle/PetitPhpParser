grammar-control-structures
testTryCatchStatementCustomException
	self
		parse: 'try {	
		} catch (Model\Exceptions\InvalidModelIdException $ex) {
		}'
		rule: #tryCatchStatement.