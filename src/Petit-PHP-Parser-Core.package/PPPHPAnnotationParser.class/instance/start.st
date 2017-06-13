accessing
start
	| tmp1 tmp2 tmp4 |
	^ super start
		==> [ :arg1 | 
			tmp4 := PPPHPAnnotation createFromNamespaceStack: arg1 second.
			((arg1 size > 2 and: [ arg1 third notNil ])
				and: [ arg1 third notNil ])
				ifTrue: [ tmp4 content: arg1 third trim ].
			tmp4 ]