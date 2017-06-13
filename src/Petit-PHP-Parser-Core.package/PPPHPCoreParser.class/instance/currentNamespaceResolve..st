namespace-resolving
currentNamespaceResolve: aPPPHPNamespaceStack
	"resolve relative namespaces and bind them to the current space and returns the modified one"
	(aPPPHPNamespaceStack isRelative and: [self currentNamespace notNil]) ifTrue: [
		^ self currentNamespace copy concat: aPPPHPNamespaceStack.
	].
	^ aPPPHPNamespaceStack