grammar-namespace
namespacePath
	" Namespace definitions do not allow root but calls for classes and functions do!
	Relative Namespace: 	vendor\component\class
	Absolute Namespace: 	\vendor\component\class"
	^(namespaceIdentifier / namespaceRoot) trim.