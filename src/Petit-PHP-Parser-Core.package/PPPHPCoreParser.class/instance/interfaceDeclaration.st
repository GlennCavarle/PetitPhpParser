grammar-statements
interfaceDeclaration
	^super interfaceDeclaration ==> [:token | 
		|  interfaceNode |
		
		interfaceNode := PPPHPInterfaceNode createFromNamespaceStack: (self currentNamespaceResolve: token third).
		self setupDocBlockAndAnnotationsOn: interfaceNode fromToken: token first.
		
		(token fourth notNil) ifTrue: [
			"token fourth second do:!"
			self setupSuperTypesOn: interfaceNode fromToken: token fourth second.
		].
		
		interfaceNode behaviouralEntities: (token fifth select: [:item | item isMemberOf: PPPHPMethodNode ]).
		interfaceNode attributes: (token fifth select: [:item | item isKindOf: PPPHPFieldNode ]).
		interfaceNode
	].