grammar-control-structures
testIfElseIfStatementDefaultSyntaxMultiple
	self 
		parse: 'if($one == true){
					$two = false;
			     } elseif ($one == 2){
					$two = 3;
				} else if ($one == 10){
					$two = null;
				}'
		rule: #ifStatement.