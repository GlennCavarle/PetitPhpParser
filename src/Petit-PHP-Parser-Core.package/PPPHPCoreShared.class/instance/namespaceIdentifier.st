grammar-namespace
namespaceIdentifier
	" Namespace definitions do not allow root but calls for classes and functions do!
	The last element is the className, the function name or the deepest namespace, depending on context.
	Relative Namespace: 	vendor\component\class
	Absolute Namespace: 	\vendor\component\class"
	^ namespaceSeparator optional, (namespaceSegment star), variableName trim