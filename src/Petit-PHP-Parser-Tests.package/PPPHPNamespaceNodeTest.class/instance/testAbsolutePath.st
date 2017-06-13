as yet unclassified
testAbsolutePath
	""
	nodeOne parentNamespace: nodeTwo.
	self assert: nodeOne isAbsolute not.
	self assert: nodeOne isRelative.
	
	nodeTwo parentNamespace: rootNode.
	self assert: nodeOne isAbsolute.
	self assert: nodeTwo isAbsolute.