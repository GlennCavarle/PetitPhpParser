as yet unclassified
createFromCollection: anOrderedCollection
	"Add elements in reversed order!"
	| nameStack |
	
	nameStack := PPPHPNamespaceStack new.	
	anOrderedCollection do: [:element | 
		nameStack push: (PPPHPNamespaceNode new namespaceName: element).
	].
	^ nameStack