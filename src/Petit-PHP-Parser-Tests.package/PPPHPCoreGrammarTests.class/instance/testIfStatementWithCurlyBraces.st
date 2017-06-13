grammar-control-structures
testIfStatementWithCurlyBraces
	self 
		parse: 'if($one == true){
				$two = false;
			     }'
		rule: #ifStatement.