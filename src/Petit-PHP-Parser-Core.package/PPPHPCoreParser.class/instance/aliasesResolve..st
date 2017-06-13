namespace-resolving
aliasesResolve: aPPPHPNamespaceStack
	(self isAliased: aPPPHPNamespaceStack)
		ifTrue: [ 
			| aliased key |
			key := self getAliasedKeyFor: aPPPHPNamespaceStack.
			aliased := self getAliasedFor: aPPPHPNamespaceStack.
			aliased alias: aPPPHPNamespaceStack.
			aPPPHPNamespaceStack flattenNamespace = key
				ifFalse: [ 
					"the first is the partially aliased part, without the copy this one had side effects"
					aPPPHPNamespaceStack allButLast reverseDo: [ :item | aliased push: item copy ] ].	"Partial match."
			^ aliased ]
		"Append it to the current namespace."
		ifFalse: [ ^ self currentNamespaceResolve: aPPPHPNamespaceStack ]