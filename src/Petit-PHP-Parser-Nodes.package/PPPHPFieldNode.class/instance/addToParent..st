accessing
addToParent: aParentNode
	super addToParent: aParentNode.
	aParentNode attributes add: self.