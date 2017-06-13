grammar
statementBlock
	^(comment star, (self inCB: innerStatement star), comment star) ==> [:result | result second].