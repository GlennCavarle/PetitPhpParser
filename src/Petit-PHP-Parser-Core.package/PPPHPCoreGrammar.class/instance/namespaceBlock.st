grammar-namespace
namespaceBlock
	"Namespace blocks allow empty namespace (binding to global namespace)"
	^ namespaceDefinition , (self inCB: topStatements ).