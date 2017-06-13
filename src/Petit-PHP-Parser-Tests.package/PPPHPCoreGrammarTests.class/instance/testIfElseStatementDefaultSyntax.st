grammar-control-structures
testIfElseStatementDefaultSyntax
	self 
		parse: 'if($one == true){
				$two = false;
			     } else {
				$two = 3;
				}'
		rule: #ifStatement.