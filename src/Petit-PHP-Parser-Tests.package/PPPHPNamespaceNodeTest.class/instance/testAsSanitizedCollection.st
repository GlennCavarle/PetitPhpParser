as yet unclassified
testAsSanitizedCollection
	nodeOne parentNamespace: nodeTwo.
	nodeThree parentNamespace: rootNode.
	nodeTwo parentNamespace: nodeThree.
	
	self assert: nodeOne fullyQualifiedNamespaceName = '\nodeThree\nodeTwo\nodeOne'.
	self assert: nodeOne asSanitizedCollection first = nodeThree.
	self assert: nodeOne asSanitizedCollection second = nodeTwo.
	self assert: nodeOne asSanitizedCollection third = nodeOne.
	self assert: nodeOne asSanitizedCollection size = 3.