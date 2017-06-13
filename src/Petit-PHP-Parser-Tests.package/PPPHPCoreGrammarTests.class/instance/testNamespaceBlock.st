grammar-namespace
testNamespaceBlock
	self 
		parse: 'namespace {}' "root"
		rule: #namespaceBlock.
	self 
		parse: 'namespace vendor\Bundle {}' "vendor prefixed"
		rule: #namespaceBlock.
	self 
		parse: 'namespace \vendor\Bundle {}' "vendor prefixed in root"
		rule: #namespaceBlock.