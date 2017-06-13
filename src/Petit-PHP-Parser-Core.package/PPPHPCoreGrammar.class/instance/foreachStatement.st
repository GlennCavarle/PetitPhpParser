grammar-control-structures
foreachStatement
	
	^ foreach, (self inRB: expression, as, expression),
		(
			(self parser: innerStatement star between: colon and: endforeach, endStatementDelimiter ) /
			innerStatement
		)