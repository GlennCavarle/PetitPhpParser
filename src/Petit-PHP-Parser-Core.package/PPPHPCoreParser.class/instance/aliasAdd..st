namespace-resolving
aliasAdd: aPPPHPNamespaceStack
	" the symbol should always be a T_STRING "
	self aliases 
		at: aPPPHPNamespaceStack alias fullyQualifiedNamespaceName 
		ifAbsentPut: aPPPHPNamespaceStack.
	