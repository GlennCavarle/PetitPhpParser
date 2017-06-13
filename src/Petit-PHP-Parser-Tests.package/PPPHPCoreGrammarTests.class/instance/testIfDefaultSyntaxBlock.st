grammar-control-structures
testIfDefaultSyntaxBlock
	self 
		parse: '{
		$one= 2+2;
		}'
		rule: #ifStatementDefaultSyntax.