grammar-control-structures
testIfStatementWithoutDelimiters
	self 
		parse: 'if($one == true) $one = false; '
		rule: #ifStatement.