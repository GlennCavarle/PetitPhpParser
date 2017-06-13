grammar-control-structures
ifStatementDefaultSyntax
	"This actual implementation allows mixing which is caused by php's interpretation of a code block."
	^  innerStatement,
		(comment star, elseif, condition, innerStatement ) star,
		(comment star, else, innerStatement ) optional