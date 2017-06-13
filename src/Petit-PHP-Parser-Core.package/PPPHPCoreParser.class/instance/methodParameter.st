grammar-statements
methodParameter
	^ super methodParameter
		==> [ :token | 
			| parameter left isReference |
			parameter := PPPHPParameterNode new.
			token first notNil
				ifTrue: [ parameter typeHint: (PPPHPTypeNode createFromNamespaceStack: (self aliasesResolve: token first)) ].
			parameter isReference: token second notNil.	"then the expression, two case"
			parameter nodeName: token fourth trimRight.
			token fifth notNil
				ifTrue: [ parameter defaultValue: token fifth second ].
			parameter ]