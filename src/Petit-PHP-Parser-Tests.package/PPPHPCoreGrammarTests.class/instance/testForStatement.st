grammar-control-structures
testForStatement
	self 
		parse: 'for($i=0;$i<10;$i++){
			++$i;
		}'
		rule: #forStatement.