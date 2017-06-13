namespace-resolving
getAliasedFor: aPPPHPNamespaceStack
	| key |
	key := self getAliasedKeyFor: aPPPHPNamespaceStack.
	key isNil
		ifFalse: [ ^ (aliases at: key) copy ]. "copy the alias, otherwise it gets modified when resolving"
	^ nil