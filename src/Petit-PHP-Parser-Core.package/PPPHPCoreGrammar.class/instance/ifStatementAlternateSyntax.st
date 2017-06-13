grammar-control-structures
ifStatementAlternateSyntax
	"its also possible to write if statements without the braces and delimiters
	elseif():"
	|elseifBlockParser elseBlockParser |
	
	elseifBlockParser := elseif, condition, colon, (innerStatement star).
	elseBlockParser := else, colon, (innerStatement star).
	
	 ^( 
		self parser: (innerStatement star, 
		elseifBlockParser star, 
		elseBlockParser optional
	   ) between: colon and: (endif , endStatementDelimiter )) 	"in : and endif;"