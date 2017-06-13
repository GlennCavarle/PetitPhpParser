accessing
addToParent: anAnnotatedNode
	super addToParent: anAnnotatedNode.
	anAnnotatedNode annotations add: self.