accessing
fullyQualifiedTypeName
	"wrapper"
	self namespaceStack notNil ifTrue: [
		^ self namespaceStack fullyQualifiedNamespaceName.
	].
	^ self nodeName.