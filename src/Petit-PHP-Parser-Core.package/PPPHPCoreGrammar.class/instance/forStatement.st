grammar-control-structures
forStatement
	| concatenatedExpression |
	concatenatedExpression := (expression optional, semicolon times: 2), expression optional.
	^ for, 
	(self inRB: (concatenatedExpression)), 
	(
		(self parser: innerStatement star between: colon and: endfor, endStatementDelimiter ) /
		innerStatement
	)