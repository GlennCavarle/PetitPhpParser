grammar-control-structures
testIfStatementWithoutDelimitersAndLanguageConstruct
	self 
		parse: 'if($one == true) return false;'
		rule: #ifStatement.