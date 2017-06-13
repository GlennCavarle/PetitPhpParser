grammar-control-structures
testTryCatchStatementMultipleException
	self
		parse: 'try {	
		} catch (Model\Exceptions\InvalidModelIdException $ex) {
		} catch (Model\Exceptions\ValidationException $ex){
		}'
		rule: #tryCatchStatement.