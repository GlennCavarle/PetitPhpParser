grammar-control-structures
testDoWhileStatementSingleFails
	self 
		fail: 'do
			++$i;
			$n++;
		while($i<10);'
		rule: #doWhileStatement.