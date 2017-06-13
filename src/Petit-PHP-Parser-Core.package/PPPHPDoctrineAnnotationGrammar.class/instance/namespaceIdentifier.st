as yet unclassified
namespaceIdentifier
	^super namespaceIdentifier ==> [:token |
		PPPHPNamespaceStack createFromToken: token.
	].