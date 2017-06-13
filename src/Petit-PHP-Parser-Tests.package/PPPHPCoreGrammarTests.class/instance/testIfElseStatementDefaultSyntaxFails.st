grammar-control-structures
testIfElseStatementDefaultSyntaxFails
	self 
		fail: 'if($one == true){
				$two = false;
			     } else ($one == false){
				$two = 3;
				}'
		rule: #ifStatement.