accessing
addToParent: aParentNode
	super addToParent: aParentNode.
	aParentNode parameters add: self.