namespace-resolving
getAliasedKeyFor: aPPPHPNamespaceStack
	"Returns the key of an alias or nil if there is none. Was added to allow easyer resolving partially aliased namespaces."
	| partialKey fullKey |
	partialKey := aPPPHPNamespaceStack last namespaceName.
	fullKey := aPPPHPNamespaceStack fullyQualifiedNamespaceName.
	^ aliases
		at: partialKey
		ifPresent: [ :item | ^ partialKey ]
		ifAbsent: [ aliases at: fullKey ifPresent: [ :item | ^ fullKey ] ifAbsent: [ ^ nil ] ]