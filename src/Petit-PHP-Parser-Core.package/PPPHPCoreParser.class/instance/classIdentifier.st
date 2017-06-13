grammar-class
classIdentifier
	^super classIdentifier ==> [:ident |
		PPPHPNamespaceStack createFromCollection: (Array with: ident )
		]