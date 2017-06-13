grammar-control-structures
testForEachStatementAssociativeAlternateSyntax
	self 
		parse: 'foreach($anArray as $key=>$value):
			doSomething($key, $value);
		endforeach;'
		rule: #foreachStatement.