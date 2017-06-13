grammar-class
accessibility
	^ super accessibility
		==> [ :token | 
			| accessScope |
			accessScope := PPPHPScopeNode new scope: token.
			accessScope ]