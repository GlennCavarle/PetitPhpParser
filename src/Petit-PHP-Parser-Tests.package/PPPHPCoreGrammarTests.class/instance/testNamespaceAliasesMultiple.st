grammar-namespace
testNamespaceAliasesMultiple
	self 
		parse: 'use vendor\component\class1 as class1,
					vendor\component\classname as classname,
					vendor\component\classname as classname2'
		rule: #namespaceAliases.