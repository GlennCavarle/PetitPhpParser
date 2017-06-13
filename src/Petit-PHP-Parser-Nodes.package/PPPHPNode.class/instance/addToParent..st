accessing
addToParent: parentNode
	parentNode children add: self.
	self parent: parentNode.