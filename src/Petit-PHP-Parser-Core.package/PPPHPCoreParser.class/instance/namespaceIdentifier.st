grammar-namespace
namespaceIdentifier
	^super namespaceIdentifier ==> [:token |
		PPPHPNamespaceStack createFromToken: token.
	].