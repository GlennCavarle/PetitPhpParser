accessing
namespaceStack: aPPPHPNamespaceStack
	self nodeName: aPPPHPNamespaceStack getBaseName.
	self parentNamespace: aPPPHPNamespaceStack top parentNamespace.
	namespaceStack := aPPPHPNamespaceStack.