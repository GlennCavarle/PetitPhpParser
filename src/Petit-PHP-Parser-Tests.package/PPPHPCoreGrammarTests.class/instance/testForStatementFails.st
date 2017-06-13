grammar-control-structures
testForStatementFails
	self 
		fail: 'for($i=0){
			++$i;
		}'
		rule: #forStatement.