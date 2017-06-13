grammar-control-structures
testIfElseStatementDefaultSyntaxMultipleElsesFails
		self 
		fail: 'if($one == true){
				$two = false;
			     } else {
				$two = 3;
				} else {
				$two =4;
				}'
		rule: #ifStatement.