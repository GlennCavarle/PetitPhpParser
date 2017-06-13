grammar-namespace
namespaceStatement
	"Namespace blocks allow empty namespace (binding to global namespace)"
	^ 	namespaceBlock / 
		(namespaceDefinition, endStatementDelimiter) / 
		(namespaceAliases, endStatementDelimiter)