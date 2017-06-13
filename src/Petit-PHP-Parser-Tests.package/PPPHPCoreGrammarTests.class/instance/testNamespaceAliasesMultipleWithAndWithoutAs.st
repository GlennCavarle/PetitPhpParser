grammar-namespace
testNamespaceAliasesMultipleWithAndWithoutAs
	self 
		parse: 'use Rcky\Collections\Iterator,
					Rcky\Collections\Walker as Airwalker'
		rule: #namespaceAliases.