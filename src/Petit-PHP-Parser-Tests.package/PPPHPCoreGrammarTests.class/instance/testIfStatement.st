grammar-control-structures
testIfStatement
	self 
		parse: 'if($one == true){
				$two = false;
			     }'
		rule: #ifStatement.