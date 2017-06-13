grammar-class
classDeclaration
	^ super classDeclaration
		==> [ :arg1 | 
			| tmp1 tmp2 tmp3 tmp4 |
			tmp4 := arg1 parsedValue.
			tmp2 := self currentNamespaceResolve: tmp4 fourth.
			tmp1 := PPPHPClassNode createFromNamespaceStack: tmp2.
			tmp1 addModifier: tmp4 second.
			tmp1 startLine: arg1 line.
			tmp3 := self.
			tmp3
				setupDocBlockAndAnnotationsOn: tmp1 fromToken: tmp4 first;
				setupSuperTypesOn: tmp1 fromToken: tmp4 fifth;
				setupInterfacesOn: tmp1 fromToken: tmp4 sixth.
			tmp4 seventh do: [ :arg2 | arg2 parsedValue addToParent: tmp1 ].
			tmp1 ]