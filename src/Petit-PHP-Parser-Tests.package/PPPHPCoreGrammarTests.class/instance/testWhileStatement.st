grammar-control-structures
testWhileStatement
	self 
		parse: 'while($one < 5){
				doSomething();
			     }'
		rule: #whileStatement.