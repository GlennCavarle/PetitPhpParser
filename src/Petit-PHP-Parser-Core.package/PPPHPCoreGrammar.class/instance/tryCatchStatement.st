grammar-control-structures
tryCatchStatement
	^ try , statementBlock , (catch , (self inRB: fullyQualifiedClassName , variable) , statementBlock) plus