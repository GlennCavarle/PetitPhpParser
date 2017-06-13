as yet unclassified
createFromNamespaceStack: aPPPHPNamespaceStack
	"factory method"
	| instance |
	instance := self new.
	instance namespaceStack: aPPPHPNamespaceStack.
	^instance.