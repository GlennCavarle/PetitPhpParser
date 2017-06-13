grammar-control-structures
testForEachStatement
	self 
		parse: 'foreach($anArray as $item){
			doSomething($item);
		}'
		rule: #foreachStatement.