grammar-namespace
testNamespaceStatementAliasesMultipleWithAndWithoutAs
	self 
		parse: 'use Rcky\Collections\Iterator,
					Rcky\Collections\Walker as Airwalker;'
		rule: #namespaceStatement.