as yet unclassified
addToParent: aParent
	super addToParent: aParent.
	aParent parameters at: self nodeName put: self.