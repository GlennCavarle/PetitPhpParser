accessing
push: aPPPHPNamespaceNode
	"Directly links the node to the upper namespace."
	self isEmpty ifFalse: [ aPPPHPNamespaceNode parentNamespace: self top. ].
	super push: aPPPHPNamespaceNode.
	