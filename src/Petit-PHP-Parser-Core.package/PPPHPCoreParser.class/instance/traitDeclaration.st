grammar-class
traitDeclaration
	^ super traitDeclaration
		==> [ :arg1 | 
			| tmp1 tmp2 tmp3 |
			tmp2 := self currentNamespaceResolve: arg1 fourth.
			tmp1 := PPPHPTraitNode createFromNamespaceStack: tmp2.
			tmp1
				addModifier: arg1 second.
			tmp3 := self.
			tmp3
				setupDocBlockAndAnnotationsOn: tmp1 fromToken: arg1 first;
				setupSuperTypesOn: tmp1 fromToken: arg1 fifth;
				setupInterfacesOn: tmp1 fromToken: arg1 sixth.
			arg1 seventh do: [ :arg2 | arg2 addToParent: tmp1 ].
			tmp1 ]