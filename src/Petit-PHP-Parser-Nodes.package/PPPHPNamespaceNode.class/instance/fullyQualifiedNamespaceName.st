as yet unclassified
fullyQualifiedNamespaceName
	"bubble up the namespace and reconstruct the full path as a string without a trailing separator"
	self isRoot ifFalse: [
		self parentNamespace isSeparator ifFalse: [
			^ self parentNamespace fullyQualifiedNamespaceName , separator asString , self namespaceName
		].
		^ self parentNamespace fullyQualifiedNamespaceName , self namespaceName
	].
	^ self namespaceName asString.	