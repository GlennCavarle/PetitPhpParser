grammar-control-structures
testIfElseIfStatementDefaultSyntax
	self 
		parse: 'if($one == true){
				$two = false;
			     } elseif ($one == 2){
				$two = 3;
				}'
		rule: #ifStatement.