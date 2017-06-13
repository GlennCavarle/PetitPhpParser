grammar-control-structures
testDoWhileStatementSingle
	self 
		parse: 'do
			++$i;
		while($i<10);'
		rule: #doWhileStatement.