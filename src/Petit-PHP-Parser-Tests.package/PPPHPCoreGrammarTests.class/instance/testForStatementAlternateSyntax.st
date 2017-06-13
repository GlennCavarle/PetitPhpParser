grammar-control-structures
testForStatementAlternateSyntax
	self 
		parse: 'for($i=0;$i<10;$i++):
			++$i;
		endfor;'
		rule: #forStatement.