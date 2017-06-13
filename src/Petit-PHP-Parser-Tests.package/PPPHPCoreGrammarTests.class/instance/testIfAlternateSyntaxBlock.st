grammar-control-structures
testIfAlternateSyntaxBlock
	self 
		parse: ':
		$one= 2+2;
		endif;'
		rule: #ifStatementAlternateSyntax.