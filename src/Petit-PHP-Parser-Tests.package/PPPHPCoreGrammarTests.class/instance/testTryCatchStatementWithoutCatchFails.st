grammar-control-structures
testTryCatchStatementWithoutCatchFails
	self
		fail: 'try {	
			$somevar = $this->getSomevar();
		} '
		rule: #tryCatchStatement.