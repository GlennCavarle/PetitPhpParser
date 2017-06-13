grammar-namespace
namespaceDefinition
	"Usually the namespace should not be optional, but we use this method to hook into the resolving process.
	Relative Namespace: 	namespace vendor\component\class
	Absolute Namespace: 	namespace \vendor\component\class"
	^namespace, fullyQualifiedNamespace optional