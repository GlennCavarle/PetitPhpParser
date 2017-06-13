grammar-control-structures
testIfElseIfStatementAlternativeSyntax
	self 
		parse: 'if($one == true):
				$two = false;
			     elseif ($one == 2):
				$two = 3;
			     endif;'
		rule: #ifStatement.