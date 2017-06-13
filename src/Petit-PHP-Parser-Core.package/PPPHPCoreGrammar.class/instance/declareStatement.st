grammar-control-structures
declareStatement
	"This is used mostly for profiling!"
	^ declare, condition,
		(
			statementBlock /
			(self parser:  innerStatement star between: colon and: enddeclare, endStatementDelimiter) /
			innerStatement star
		)