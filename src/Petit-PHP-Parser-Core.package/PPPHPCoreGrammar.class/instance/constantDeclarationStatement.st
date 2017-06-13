grammar-constants
constantDeclarationStatement
	 ^ const, ((variableName , $= asParser trim, literal) separatedBy: comma) withoutSeparators, endStatementDelimiter