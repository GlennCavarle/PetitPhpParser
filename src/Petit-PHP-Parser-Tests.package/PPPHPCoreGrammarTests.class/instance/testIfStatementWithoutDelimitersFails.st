grammar-control-structures
testIfStatementWithoutDelimitersFails
	self 
		fail: 'if($one == true) 
			$one = false; 
			$two = 2;'
		rule: #ifStatement.