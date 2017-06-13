grammar-control-structures
testIfStatementWithAlternateSyntax
	self 
		parse: 'if($one == true):
				$two = false;
			     endif;'
		rule: #ifStatement.