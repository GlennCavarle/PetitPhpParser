grammar-statements
innerStatement
	^ variablesGlobalStatement / variablesStaticStatement
		/ classDeclaration / interfaceDeclaration / traitDeclaration / functionDeclaration
		/ constantDeclarationStatement / controlStructure / statementBlock
		/ semicolon / comment
		/ (languageConstructInvocation , endStatementDelimiter)
		/
			(((endif / endswitch / case / default / enddeclare / endforeach
				/ endfor / endwhile) not , expression , endStatementDelimiter)
				==> [ :arg1 | arg1 allButFirst ]) / escapedHTML / gotoStatement