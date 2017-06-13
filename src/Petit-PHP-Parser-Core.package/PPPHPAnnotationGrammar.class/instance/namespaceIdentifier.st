as yet unclassified
namespaceIdentifier
	^ super namespaceIdentifier
		==> [ :arg1 | PPPHPNamespaceStack createFromToken: arg1 ]