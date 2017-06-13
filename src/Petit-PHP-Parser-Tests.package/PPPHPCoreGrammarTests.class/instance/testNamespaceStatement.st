grammar-namespace
testNamespaceStatement
	self
		parse: 'namespace \rooted;'
		rule: #namespaceStatement.
	self
		parse: 'namespace some\space { }'
		rule: #namespaceStatement.
	self
		parse: 'use vendor\Bundle\Controller;'
		rule: #namespaceStatement.