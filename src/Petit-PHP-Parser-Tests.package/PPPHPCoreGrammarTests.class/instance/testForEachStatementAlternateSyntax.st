grammar-control-structures
testForEachStatementAlternateSyntax
	self 
		parse: 'foreach($anArray as $item):
			doSomething($item);
		endforeach;'
		rule: #foreachStatement.