grammar-control-structures
testTryCatchStatementWithoutExceptionTypeFails
	self
		fail: 'try {	
			$somevar = $this->getSomevar();
		} catch($ex){
		}'
		rule: #tryCatchStatement.