grammar-statements
functionDeclaration
	self flag: 'Split up the different function types?'.
	^ super functionDeclaration
		==> [ :arg1 | 
			| tmp1 tmp2 tmp3 |
			tmp1 := PPPHPFunctionNode new.
			tmp1 isReferenced: arg1 third = '&'.
			self setupDocBlockAndAnnotationsOn: tmp1 fromToken: arg1 first.
			arg1 fourth
				ifNotNil: [ tmp3 := self aliasesResolve: arg1 fourth.
					tmp1
						nodeName: tmp3 getBaseName;
						scope: tmp3 ].
			tmp2 := arg1 fifth second
				ifNotNil: [ :arg2 | 
					tmp1
						parameters: (arg2 select: [ :arg3 | arg3 isMemberOf: PPPHPParameterNode ]) ].
			tmp1 body: arg1 last second.
			tmp1 ]