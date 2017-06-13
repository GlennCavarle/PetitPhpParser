grammar-control-structures
testForStatementAlternateSyntaxFails
	self 
		fail: 'for($i=0;$i<10;$i++):
			++$; '
		rule: #forStatement.