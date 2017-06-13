as yet unclassified
testFullyQualifiedNamespaceName
	"base case"
	self assert: nodeOne isRelative.
	self assert: nodeOne namespaceName = nodeOne fullyQualifiedNamespaceName.
	self assert: rootNode fullyQualifiedNamespaceName = $\ asString.
	
	nodeOne parentNamespace: nodeTwo.
	
	self assert: nodeOne isRelative.
	self assert: nodeTwo isRelative.
	self assert: nodeOne fullyQualifiedNamespaceName = 'nodeTwo\nodeOne'.
	
	nodeThree parentNamespace: rootNode.
	
	self assert: nodeThree fullyQualifiedNamespaceName = '\nodeThree'.
	
	nodeTwo parentNamespace: nodeThree.
	
	self assert: nodeOne fullyQualifiedNamespaceName = '\nodeThree\nodeTwo\nodeOne'.