accessing
addToParent: parentNode
	super addToParent: parentNode.
	parentNode behaviouralEntities add: self.