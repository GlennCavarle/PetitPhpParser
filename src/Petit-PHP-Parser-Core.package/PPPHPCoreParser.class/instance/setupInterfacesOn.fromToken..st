grammar-class
setupInterfacesOn: arg1 fromToken: arg2
	arg2
		ifNotNil: [ :arg3 | 
			arg3 second
				do: [ :arg4 | 
					| tmp1 |
					tmp1 := PPPHPInterfaceNode
						createFromNamespaceStack: (self aliasesResolve: arg4).
					tmp1 isFragment: true.
					arg1 addInterface: tmp1 ] ]