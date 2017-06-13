as yet unclassified
setupSuperTypesOn: arg1 fromToken: arg2
	arg2
		ifNotNil: [ :arg3 | 
			| tmp1 |
			(arg3 isMemberOf: PPPHPNamespaceStack)
				ifTrue: [ tmp1 := {arg3} ]
				ifFalse: [ tmp1 := arg3 ].
			tmp1
				do: [ :arg4 | 
					| tmp2 |
					(arg4 isMemberOf: PPPHPNamespaceStack)
						ifTrue: [ tmp2 := arg1 class
								createFromNamespaceStack: (self aliasesResolve: arg4).
							tmp2 isFragment: true.
							arg1 addSuperType: tmp2 ] ] ]