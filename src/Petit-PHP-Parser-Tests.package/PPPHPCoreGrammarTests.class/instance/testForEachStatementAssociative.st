grammar-control-structures
testForEachStatementAssociative
	self 
		parse: 'foreach($anArray as $key=>$value){
			doSomething($key, $value);
		}'
		rule: #foreachStatement.