grammar-control-structures
switchStatement
	| cases |
	cases := (comment star , (switchCase / switchDefault)) star.
	^ switch, condition,
	(
		(self inCB: cases) /
		(self parser: cases between: colon and: endswitch, endStatementDelimiter )
	)