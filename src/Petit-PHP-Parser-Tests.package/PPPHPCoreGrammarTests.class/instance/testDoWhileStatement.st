grammar-control-structures
testDoWhileStatement
	self 
		parse: 'do{
			++$i;
		} while($i<10);'
		rule: #doWhileStatement.